# Hackintosh-Code01

机械革命 Code01 Ver 2.0 的 OpenCore 配置，来自 1401 U 盘的默认 EFI。实机使用 Ryzen 7 6800H、Radeon 680M、macOS Tahoe 26.7.2 和 MacPro7,1 机型。

## 使用范围

公开版包含 OpenCore 1.0.9 DEBUG 启动文件、5 张 ACPI 表、2 个 UEFI 驱动、UEFI 工具和 19 个顶层 kext。文件直接取自 1401 当前默认 EFI。RestrictEvents 随盘保留，配置中已停用。

1. 按[下载清单](DOWNLOADS.md)补齐 6 个启用的 kext。RembrandtGfx 提供源码和构建说明，尚未找到与原机一致的显卡驱动下载。
2. 在 [config.plist](EFI/OC/config.plist) 中为自己的 MacPro7,1 身份填写 SystemSerialNumber、MLB、SystemUUID 和 ROM。
3. 原机为内屏注入了本机 VBIOS。请核实自己的硬件，再将本机 VBIOS 填回 GPU 设备属性的 `ATY,bin_image`。公开版已清除本机蓝牙身份数据。

[SHA256SUMS](SHA256SUMS) 校验仓库中全部 EFI 文件。[原盘依赖清单](DEPENDENCIES.md) 可核对另行下载的文件。公开版未单独上机启动测试。

## 本机测试记录

- RembrandtGfx 驱动内屏达到 2560×1600、120 Hz，Metal API 报告支持 Metal 3。VideoToolbox 对 H.264 和 HEVC 硬解的查询返回 false。
- AMDRyzenCPUPowerManagement 与 SMCAMDProcessor 3.34.0 可读取动态封装温度和核心有效频率。
- MacBookPro16,1 下曾出现内屏黑屏。USB 摄像头在 Tahoe 能开流，但测试画面全黑。双风扇 RPM 仍待验证。

[OpenCore](https://github.com/acidanthera/OpenCorePkg) · [CPU 温度驱动 v3.34.0](https://github.com/DrogaBox/SMCAMDProcessor-personal/releases/tag/v3.34.0)
