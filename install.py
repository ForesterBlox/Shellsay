from os import system
import os
import subprocess
system("mkdir ~/cbin")
home = os.path.expanduser('~')
system(f"sudo bash -c 'echo \"{home}/cbin\" >> /etc/paths'")
system("rustc -o shellsay ./src/main.rs")
system("mv ./shellsay ~/cbin")
