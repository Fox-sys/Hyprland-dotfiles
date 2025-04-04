import os
from abc import abstractmethod, ABC

from src.adapters.system_manipulation.installers.base_installer import BaseInstaller
from src.application.configurator.interfaces.system_manipulators import IDriverInstaller


class BaseDriverInstaller(BaseInstaller, IDriverInstaller, ABC):
    def install_packages(self) -> None:
        super().install_packages()
