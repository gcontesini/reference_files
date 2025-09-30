import lib as lib 
# ==============================================================================
lib.log.LoggerFactory.configure()
log = lib.log.LoggerFactory.get_logger()
# ==============================================================================
def helper():
  
  log.info("Helper function running")

# ==============================================================================
if __name__ == "__main__":
  helper()