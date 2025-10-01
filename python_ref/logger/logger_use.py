import lib as lib 
# ==============================================================================
lib.log.LoggerFactory.configure()
log = lib.log.LoggerFactory.get_logger()
# ==============================================================================
def main():
  
  log.info("Starting main function")
  log.debug("Debugging details here")
  log.error("An error occurred")
  lib.helper()

# ==============================================================================
if __name__ == "__main__":
  main()
