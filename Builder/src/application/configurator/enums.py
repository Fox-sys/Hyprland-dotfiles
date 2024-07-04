from enum import Enum


class DriverTypeEnum(str, Enum):
    AMD_GPU_FREE = 'Amd gpu free'
    AMD_GPU_PRO = 'Amd gpu pro'
    NVIDIA_MAXWELL = 'Nvidia Maxwell'
    NVIDIA_MAXWELL_DKMS = 'Nvidia Maxwell dkms'
    NVIDIA_KEPLER = 'Nvidia Kepler'
    NVIDIA_NVCX_AND_NVDX = 'Nvidia 400/500/600 series'
    NVIDIA_TESLA = 'Nvidia Telsa'
    NVIDIA_TUNING = 'Nvidia Tunning'


class LoggerStatusEnum(str, Enum):
    INFO = 'Info'
    WARNING = 'Warning'
    ERROR = 'Error'
