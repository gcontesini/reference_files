import os as os
import sys as sys
import datetime as dt
import inspect as inspect
import logging as logging
import pathlib as pathlib
# ==============================================================================
class LoggerFactory:

  _loggers = {}

  @classmethod
  def configure(cls):
    _var_log = "./var/log/logfile"
    _logfile = f"{_var_log}_{dt.datetime.today().strftime('%Y-%m-%d_-_%H:%M:%S')}.log"

    cls._logfile = _logfile

  @classmethod
  def get_logger( cls, name_ = None) -> logging.Logger:
    """
    Returns a configured logger. 
    """

    # ! If no name is provided, uses the calling file’s name.
    if not name_:
      frame = sys._getframe( 1 )
      filepath = pathlib.Path( frame.f_code.co_filename )
      name = filepath.stem

    if name_ in cls._loggers:
      return cls._loggers[ name_ ]

    logger = logging.getLogger( name_ )
    logger.setLevel( logging.DEBUG )

    if not logger.handlers:
      log_path = pathlib.Path(cls._logfile)
      
      if not log_path.parent.exists():
        try:
          os.makedirs(log_path.parent, exist_ok=True)
        except PermissionError:
          print(f"Permission denied creating {log_path.parent}, logs may fail")

      ch = logging.StreamHandler( sys.stdout )
      ch.setLevel( logging.DEBUG )

      fh = logging.FileHandler(
        cls._logfile,
        mode="a",
        encoding="utf-8"
      )
      fh.setLevel(logging.DEBUG)

      formatter = logging.Formatter(
        fmt="%(asctime)s | %(funcName)s | %(levelname)s | %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S"
      )

      ch.setFormatter( formatter )
      fh.setFormatter( formatter )

      logger.addHandler(ch)
      logger.addHandler(fh)

    cls._loggers[ name_ ] = logger

    return logger
# ==============================================================================