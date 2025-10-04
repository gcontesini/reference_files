import os as os
import sys as sys
import datetime as dt
import inspect as inspect
import logging as logging
import pathlib as pathlib
# ==============================================================================
class LoggerFactory:
  """
  A logger factory that uses a Singleton design that maintains consistent 
  configuration across modules.
  Call configure() once in main, then use get_logger() everywhere.
  """

  _loggers = {}
  _configured = False
  _console_level = logging.INFO
  _logfile = None
  
  @classmethod
  def configure(cls, level_ = logging.DEBUG):
    _var_log = "./var/log/logfile"
    _logfile = f"{_var_log}_{dt.datetime.today().strftime('%Y-%m-%d_-_%H:%M:%S')}.log"

    cls._logfile = _logfile
    cls._console_level = level_
    cls._configured = True

  @classmethod
  def get_logger( cls, name_ = None ) -> logging.Logger:
    """
    Returns a configured logger. 
    """
    if not cls._configured:
      cls.configure()

    if not name_:
      frame = sys._getframe( 1 )
      filepath = pathlib.Path( frame.f_code.co_filename )
      name_ = filepath.stem

    # - Return existing logger if already configured
    # NOTE: We check the actual logging module's logger registry
    # to ensure each module gets its own logger instance
    if name_ in cls._loggers:
      return cls._loggers[ name_ ]

    # - Create a new logger with the specific name
    logger = logging.getLogger( name_ )
    logger.setLevel( logging.DEBUG )
    
    # - Clear any existing handlers to avoid duplicates
    logger.handlers.clear()

    log_path = pathlib.Path( cls._logfile )
    
    # - Create log directory
    if not log_path.parent.exists():
      try:
        os.makedirs(log_path.parent, exist_ok=True)
      except PermissionError:
        print(f"Permission denied creating {log_path.parent}, logs may fail")

    formatter = logging.Formatter(
      fmt="%(asctime)s | %(name)s | %(funcName)s.%(lineno)d | %(levelname)s | %(message)s",
      datefmt="%Y-%m-%d %H:%M:%S"
    )

    # - File output
    try:
      fh = logging.FileHandler(
        cls._logfile,
        mode="a",
        encoding="utf-8"
      )
      # - file debugger is always at the DEBUG level
      fh.setLevel( logging.DEBUG )

    except Exception as e:
      print(f"Warning: Cannot create file handler: {e}")
      fh = None

    if fh:
      fh.setFormatter(formatter)
      logger.addHandler(fh)

    # - CLI output
    ch = logging.StreamHandler( sys.stdout )
    ch.setLevel( cls._console_level )
    ch.setFormatter( formatter )
    logger.addHandler(ch)

    # - Store in our registry
    cls._loggers[ name_ ] = logger

    return logger
# ==============================================================================