# Hackintosh-Code01

机械革命 Code01 Ver 2.0 的 OpenCore 配置，来自 1401 U 盘的默认 EFI。实机使用 Ryzen 7 6800H、Radeon 680M、macOS Tahoe 26.7.2 和 MacPro7,1 机型。

## 使用范围

本仓库提供 [config.plist](EFI/OC/config.plist) 与[驱动、ACPI 和 UEFI 文件清单](DEPENDENCIES.md)。复现时需另行准备清单中的文件、匹配的 OpenCore 和启动文件，并为自己的机器生成 SystemSerialNumber、MLB、SystemUUID 和 ROM。

原配置向 GPU 注入了本机 VBIOS。公开配置已移除 ATY,bin_image，复现时需从自己的同型号机器核实并补回。蓝牙控制器身份数据已清空。公开模板未经单独启动测试。

## 本机测试记录

- RembrandtGfx 驱动内屏达到 2560×1600、120 Hz，Metal API 报告支持 Metal 3。VideoToolbox 对 H.264 和 HEVC 硬解的查询返回 false。
- AMDRyzenCPUPowerManagement 与 SMCAMDProcessor 3.34.0 可读取动态封装温度和核心有效频率。
- MacBookPro16,1 下曾出现内屏黑屏。USB 摄像头在 Tahoe 能开流，但测试画面全黑。双风扇 RPM 仍待验证。

[OpenCore](https://github.com/acidanthera/OpenCorePkg) · [CPU 温度驱动 v3.34.0](https://github.com/DrogaBox/SMCAMDProcessor-personal/releases/tag/v3.34.0)
