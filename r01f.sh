import subprocess import sys import os import time import importlib import signal import shutil import random import re import textwrap

Tangani Ctrl+C

def handle_sigint(signum, frame): lolcat.lolcat("  \nYou press ( Ctrl+c )to exit. Input ( R01F ) to Run it again\n") os._exit(0)

Modul eksternal

loadings = importlib.import_module("modules.RnVuZ3Np.loadings") signal.signal(signal.SIGINT, handle_sigint)

Fungsi untuk jalankan perintah shell

def installrun(command): try: process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True) for line in process.stdout: print(line.strip()) process.wait() if process.returncode != 0: print(f"\033[91mError: Command failed with exit code {process.returncode}\033[0m") for line in process.stderr: print(f"\033[91m######## \033[0m \033[92mNo Problem\033[0m") except Exception as e: print(f"\033[91mException occurred: {e}\033[0m")

...[Bagian lain dibiarkan sama seperti sebelumnya]...

Fungsi utama

def main(): ssh = importlib.import_module("sshinstall") xray = importlib.import_module("xrayinstall") install_system() install_python() setup_files() # Menghapus pemeriksaan key # key.keyy() --> Dihapus lolfig.lolfig("  >>R01F<<") prints.prints(" Retrieving Data Packet R01F", speed=0.03, color="orange") loading.loading(5) time.sleep(0.05) clear() timezone() clear() lolfig.lolfig(" Add DNS") installrun("sudo apt-get install resolvconf network-manager dnsutils bind9 -y") configure_system() time.sleep(0.5) clear() lolfig.lolfig(" Add Domain") configure_domain() lolfig.lolfig(" Done") time.sleep(0.5) clear() lolfig.lolfig(" install ") lolfig.lolfig(" Websocket") time.sleep(0.5) ssh.sshinstall() time.sleep(0.5) clear() lolfig.lolfig(" Install UDP") setup_udp_custom() time.sleep(0.5) clear() lolfig.lolfig(" Install Xray") time.sleep(0.5) xray.xrayinstall() time.sleep(0.5) clear() lolfig.lolfig("Install") lolfig.lolfig("Tools R01F") installrun("sudo chmod +x /usr/bin/toolsinstaller.sh") installrun("sudo /usr/bin/toolsinstaller.sh") lolfig.lolfig("Done!") clear() lolfig.lolfig("Set Backup") setup_mega(remote_name, mega_email, mega_password) rename_file("/usr/bin/logcleaner.sh", "/usr/bin/cleaner") installrun("chmod +x /usr/bin/cleaner") clear() pkggg() clear() lolfig.lolfig("Apache2 Installed") apache() informasii() installrun("systemctl restart apache2") lolfig.lolfig("Done!!") addbashrc("bash /usr/bin/R01F") lolfig.lolfig(" Welcome To") lolfig.lolfig(" R01FInject") print("") prints.prints(" Will Reboot server automatically, Mandatory!!!", speed=0.03, color="orange") loadings.loadings("\033[93m Server will Reboot in 5 seconds\033[0m", 5, done=" \033[92mSee you again \033[0m") os.system("reboot")

if name == "main": main()

