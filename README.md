# Hackintosh-Code01

机械革命 Code01 Ver 2.0 的 OpenCore 配置，基于 1401 的默认 EFI。 Ryzen 7 6800H、Radeon 680M、macOS Tahoe 26.7.2 

## 已完善

以下结果来自 Code01 上的 1401 原盘 EFI。公开副本仍需补齐文件和机器身份，见下方使用说明。

| 功能 | 实测 |
|---|---|
| Radeon 680M | RembrandtGfx 驱动 2560×1600、120 Hz ，支持 Metal 3。 |
| CPU 温度与频率 | AMDRyzenCPUPowerManagement 与 SMCAMDProcessor 3.34.0 温度频率正常 |
| 电池状态 | 能读取电量百分比和充电状态。 |

## 未完善

| 功能 | 当前 |
|---|---|
| 视频硬解 | VideoToolbox 对 H.264 和 HEVC 的硬件解码能力查询均返回 `false`。 |
| 内置摄像头 | Tahoe 下能打开视频流，采集到的帧仍为黑色。640×480 模式切换问题尚未解决。 |
| 双风扇转速 | 尚未确认 `GETC(1)` 两路读数与两只风扇实际 RPM 的对应关系。 |
| Wi-Fi、 AirDrop | Wifi 重启才能切换连接，AirDrop未完善 |

## 使用范围

公开版包含 OpenCore 1.0.9 DEBUG 启动文件、5 张 ACPI 表、2 个 UEFI 驱动、UEFI 工具和 19 个顶层 kext。文件直接取自 1401 当前默认 EFI。RestrictEvents 随盘保留，配置中已停用。

1. 按[下载清单](DOWNLOADS.md)补齐 6 个启用的 kext。RembrandtGfx 提供源码和构建说明，尚未找到与原机一致的显卡驱动下载。
2. 在 [config.plist](EFI/OC/config.plist) 中为自己的 MacPro7,1 身份填写 SystemSerialNumber、MLB、SystemUUID 和 ROM。
3. 原机为内屏注入了本机 VBIOS。请核实自己的硬件，再将本机 VBIOS 填回 GPU 设备属性的 `ATY,bin_image`。公开版已清除本机蓝牙身份数据。

[SHA256SUMS](SHA256SUMS) 校验仓库中全部 EFI 文件。[原盘依赖清单](DEPENDENCIES.md) 可核对另行下载的文件。公开版未单独上机启动测试。

[OpenCore](https://github.com/acidanthera/OpenCorePkg) · [CPU 温度驱动 v3.34.0](https://github.com/DrogaBox/SMCAMDProcessor-personal/releases/tag/v3.34.0)
