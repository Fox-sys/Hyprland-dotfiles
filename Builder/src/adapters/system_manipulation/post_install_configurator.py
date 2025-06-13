import os

from src.application.configurator.interfaces.system_manipulators import IPostInstallConfigurator


class PostInstallConfigurator(IPostInstallConfigurator):
    def enable_services(self):
        os.system('sudo systemctl enable sddm')

    def apply_patches(self):
        os.system('sudo ln -sf /usr/bin/alacritty /usr/bin/xterm')
        os.system('sudo chmod -R 700 ~/.config/*')
        os.system('echo "[Theme]\nCurrent=Sugar-Candy" | sudo tee /etc/sddm.conf')
        os.system('sudo cp Images/wallpapers/2.jpg /usr/share/sddm/themes/Sugar-Candy/Backgrounds/common.jpg')
        os.system('sudo cp sddm_theme.conf /usr/share/sddm/themes/Sugar-Candy/theme.confo')
        os.system('sudo systemctl enable --now amdgpu-fan.service')
