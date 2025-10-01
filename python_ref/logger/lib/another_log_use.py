import lib as lib 
# ==============================================================================
def helper():
  log = lib.log.LoggerFactory.get_logger( )
  
  log.debug("This is a DEBUG message")
  log.info("This is an INFO message")
  log.warning("This is a WARNING message")
  log.error("This is an ERROR message")
  log.critical("This is a CRITICAL message")

# ==============================================================================
if __name__ == "__main__":
  lib.log.LoggerFactory.configure()
  helper()

