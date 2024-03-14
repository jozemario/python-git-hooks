import os
import sys
import compileall

def main():
    repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '.'))
    compileall.compile_dir(repo_root, force=True)

if __name__ == '__main__':
    sys.exit(main())