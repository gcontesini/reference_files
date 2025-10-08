
# ==============================================================================
import git as git
version = len( list( git.Repo(".").iter_commits( 'HEAD' ) ) )
released = 0
patched = 0
# ==============================================================================
import datetime as dt
__author__    = f"Guilherme Contesini dos Santos"
__copyright__ = f"Copyright (c) 2025 {__author__}"
__license__   = f"GLPv3"
__version__   = f"{released}.{patched}.{version}"
__email__     = f"gcontesini@gmail.com"
__status__    = f"under development"
__date__      = f"{dt.datetime.now().strftime('%Y-%m-%d_%H-%M-%S_')}"
# ==============================================================================

def main():
    pass
# ==============================================================================
# >> unit test
if __name__ == "__main__":
    main()
# ==============================================================================