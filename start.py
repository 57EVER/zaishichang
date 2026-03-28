
import os
import subprocess

def main():
    # 执行cmd命令 方式2，可以执行多条命令
    cmd = r'python manage.py runserver 127.0.0.1:8080'
    # subprocess.Popen(cmd,shell=True)  # 多线程运行命令
    # subprocess.Popen(cmd,creationflags=subprocess.CREATE_NO_WINDOW,shell=True)  # 无窗口运行命令
    os.system(cmd)
if __name__ == '__main__':
    main()