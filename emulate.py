from qiling import *

def main():
    ql = Qiling(["rootfs/x86_windows/bin/target.exe"], "rootfs/x86_windows")
    ql.run()

if __name__ == "__main__":
    main()