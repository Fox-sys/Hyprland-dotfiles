import os

from src.application.configurator.interfaces.system_manipulators import IPreconfigurator


class Preconfigurator(IPreconfigurator):
    def update_arch_db(self):
        os.system('sudo pacman -Suy')

    def enable_aur(self):
        os.system("git -C /tmp clone https://aur.archlinux.org/aura-bin.git")
        os.system("cd /tmp/aura-bin && makepkg -si")
