from src.application.configurator.enums import DriverTypeEnum

PACMAN_DEPENDENCIES = [
    'waybar', 'wofi', 'vscode', 'noto-fonts', 'noto-fonts-emoji', 'ttf-linux-libertine', 'ttf-jetbrains-mono-nerd',
    'pavucontrol', 'nwg-look', 'mpv', 'feh', 'xdg-desktop-portal-wlr', 'man', 'obs-studio', 'alacritty', 'thunar',
    'zsh', 'gdb', 'ninja', 'gcc', 'cmake', 'meson', 'libxcb', 'xcb-proto', 'xcb-util', 'xcb-util-keysyms', 'libxfixes',
    'libx11', 'libxcomposite', 'xorg-xinput', 'libxrender', 'pixman', 'wayland-protocols', 'cairo', 'pango', 'seatd',
    'libxkbcommon', 'xcb-util-wm', 'xorg-xwayland', 'libinput', 'libliftoff', 'libdisplay-info', 'cpio', 'tomlplusplus',
    'hyprlang', 'hyprcursor', 'hyprwayland-scanner', 'xcb-util-errors', 'curl', 'wget', 'micro', 'hyprland',
    'telegram-desktop', 'fastfetch', 'hyprpaper', 'unzip', 'unrar', 'p7zip', 'openssh', 'cliphist', 'udiskie',
    'file-roller', 'hyprpicker', 'firefox', 'noto-fonts-cjk', 'noto-fonts-emoji', 'noto-fonts', 'swaync', 'make',
    'sddm', 'xorg-xhost', 'polkit-gnome'
]

AUR_DEPENDENCIES = [
    'hyprshot', 'sddm-theme-sugar-candy', 'amdgpu-fan-curve'
]

DRIVER_PACKAGES = {
    DriverTypeEnum.AMD_GPU_FREE: [
        'mesa', 'vulkan-radeon', 'libva-mesa-driver', 'lib32-libva-mesa-driver', 'lib32-mesa', 'lib32-vulkan-radeon',
        'vulkan-tools', 'vulkan-headers', 'vulkan-icd-loader', 'lib32-vulkan-icd-loader'
    ],
    DriverTypeEnum.NVIDIA_MAXWELL: [
        'nvidia', 'nvidia-lts', 'lib32-nvidia-utils'
    ],
    DriverTypeEnum.NVIDIA_KEPLER: [
        'nvidia-470xx-dkms'
    ],
    DriverTypeEnum.NVIDIA_TUNING: [
        'nvidia-open'
    ],
    DriverTypeEnum.NVIDIA_TESLA: [
        'nvidia-340xx-dkms'
    ]
}
