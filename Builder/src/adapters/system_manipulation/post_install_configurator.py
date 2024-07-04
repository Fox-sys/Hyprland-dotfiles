import os

from src.application.configurator.interfaces.system_manipulators import IPostInstallConfigurator


class PostInstallConfigurator(IPostInstallConfigurator):
    def enable_services(self):
        ...

    def apply_patches(self):
        os.system('sudo ln -sf /usr/bin/alacritty /usr/bin/xterm')
        os.system('sudo chmod -R 700 ~/.config/*')
        os.system('sudo echo "Hyprland" >> /etc/profile')
