from abc import ABC, abstractmethod

from src.application.configurator.enums import DriverTypeEnum


class IPackageInstaller(ABC):
    @abstractmethod
    def install_packages(self) -> None:
        raise NotImplementedError


class IDriverInstaller(ABC):
    @abstractmethod
    def install_packages(self):
        raise NotImplementedError

    @abstractmethod
    def post_installing(self):
        raise NotImplementedError

    @property
    @abstractmethod
    def type(self) -> DriverTypeEnum:
        raise NotImplementedError


class IComponentInstaller(ABC):
    @abstractmethod
    def fill_home_dir(self):
        raise NotImplementedError

    @abstractmethod
    def move_configs(self):
        raise NotImplementedError

    @abstractmethod
    def install_binaries(self):
        raise NotImplementedError

    @abstractmethod
    def install_themes(self):
        raise NotImplementedError

    @abstractmethod
    def move_fonts(self):
        raise NotImplementedError

    @abstractmethod
    def move_images(self):
        raise NotImplementedError

    @abstractmethod
    def move_others(self):
        raise NotImplementedError


class IZshConfigurator(ABC):
    @abstractmethod
    def configure_oh_my_zsh_theme(self):
        raise NotImplementedError


class IPreconfigurator(ABC):
    @abstractmethod
    def enable_aur(self):
        raise NotImplementedError

    @abstractmethod
    def update_arch_db(self):
        raise NotImplementedError


class IPostInstallConfigurator(ABC):
    @abstractmethod
    def enable_services(self):
        raise NotImplementedError

    @abstractmethod
    def apply_patches(self):
        raise NotImplementedError
