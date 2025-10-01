import lib as lib 
# ==============================================================================
import argparse as arg
import logging as logging
parser = arg.ArgumentParser( description="Log Level" )
parser.add_argument(
  '--log',
  type = str,
  choices = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL'],
  default = 'INFO',
  help = "Set log level output to console"
)
args = parser.parse_args()
level_ = getattr( logging, args.log.upper(), logging.INFO )
# ==============================================================================
lib.log.LoggerFactory.configure( level_ = level_ )
log = lib.log.LoggerFactory.get_logger( __name__ )
# ==============================================================================
def main():
  
  log.info("This is an INFO message")
  log.debug("This is a DEBUG message")
  log.warning("This is a WARNING message")
  log.error("This is an ERROR message")
  log.critical("This is a CRITICAL message")
  lib.helper()

# ==============================================================================
if __name__ == "__main__":
  main()
