# 驱动下载与来源

## 需要补齐的 6 个 kext

以下目录放入 `EFI/OC/Kexts/`。硬盘配置已启用这些条目。保留原文件名和包内目录；原机文件的 SHA-256 见 [依赖清单](DEPENDENCIES.md)。

| 驱动 | 下载或构建入口 | 版本与限制 |
|---|---|---|
| AMFIPass.kext 1.4.1 | [上游](https://raw.githubusercontent.com/dortania/OpenCore-Legacy-Patcher/HEAD/payloads/Kexts/Acidanthera/AMFIPass-v1.4.1-RELEASE.zip) | OCLP 提供的 1.4.1 发布包。主程序与硬盘原件相同。未核实可再分发此二进制的授权。 |
| AppleMCEReporterDisabler.kext 1.2 | [上游](https://github.com/acidanthera/bugtracker/files/3703498/AppleMCEReporterDisabler.kext.zip) | Info.plist 与硬盘原件相同。仅含匹配配置，作者保留版权。 |
| ECEnabler.kext 1.0.6 | [下载 ZIP](https://github.com/dortania/build-repo/releases/download/ECEnabler-29dcde7/ECEnabler-1.0.6-RELEASE.zip) | 包内主程序与硬盘原件相同。未找到明确的再分发许可。 |
| RembrandtGfx.kext 0.1.0 | [上游](https://github.com/wzh4869/Radeon-680M-Hackintosh/blob/HEAD/docs/build.zh-CN.md) · [源码 ZIP](https://github.com/wzh4869/Radeon-680M-Hackintosh/archive/HEAD.zip) | 本机二进制的精确源码和分发条件未核实。链接是候选 23 的构建说明。需自备对应 Tahoe 系统文件和固件，本机版本没有已验证的同哈希下载。 |
| SimpleHDA.kext 1.0.1 | [下载 ZIP](https://github.com/laobamac/SimpleHDA/releases/download/v1.0.1/SimpleHDA-Tahoe-v1.0.1-DEBUG.zip) | 包内主程序与硬盘原件相同。上游说明驱动封装了 Apple 专有组件。 |
| USBToolBox.kext 1.2.0 | [下载 ZIP](https://github.com/USBToolBox/kext/releases/download/1.2.0/USBToolBox-1.2.0-RELEASE.zip) | 发行包主程序与硬盘原件相同。使用包内的 USBToolBox.kext，配合本仓库的 UTBMap.kext。未找到明确的再分发许可。 |

## 已随 EFI 提供

启动文件取自内置硬盘 EFI。OpenCore.efi 与 [1.0.9 DEBUG 的构建包](https://github.com/dortania/build-repo/releases/download/OpenCorePkg-ebea824/OpenCore-1.0.9-DEBUG.zip) 字节相同。[OpenCore 源码](https://github.com/acidanthera/OpenCorePkg/tree/ebea824880706ac9faa8ee45604245de62be658b)。OpenHfsPlus、OpenRuntime 和两个 UEFI 工具保留硬盘 EFI 原件。Tools 中的 Save UEFI Memory Map 为手动诊断入口，运行后会在找到脚本的分区写入内存图。

| kext | 源码或制作来源 | 配置状态 |
|---|---|---|
| AMDRyzenCPUPowerManagement.kext | [项目源码](https://github.com/DrogaBox/SMCAMDProcessor-personal/tree/v3.34.0) | 启用 |
| AppleALC.kext | [项目源码](https://github.com/acidanthera/AppleALC) | 启用 |
| BlueToolFixup.kext | [项目源码](https://github.com/acidanthera/BrcmPatchRAM/tree/65389020769837e92e9fb939bac34bd9a3e25bb2) | 启用 |
| BrightnessKeys.kext | [项目源码](https://github.com/acidanthera/BrightnessKeys) | 启用 |
| DebugEnhancer.kext | [项目源码](https://github.com/acidanthera/DebugEnhancer) | 启用 |
| Lilu.kext | [项目源码](https://github.com/acidanthera/Lilu) | 启用 |
| NVMeFix.kext | [项目源码](https://github.com/acidanthera/NVMeFix) | 启用 |
| RTL812xLucy.kext | [项目源码](https://github.com/Mieze/RTL812xLucy/tree/v1.1.3) | 启用 |
| RestrictEvents.kext | [项目源码](https://github.com/acidanthera/RestrictEvents) | 启用 |
| SMCAMDProcessor.kext | [项目源码](https://github.com/DrogaBox/SMCAMDProcessor-personal/tree/v3.34.0) | 启用 |
| SMCBatteryManager.kext | [项目源码](https://github.com/acidanthera/VirtualSMC) | 启用 |
| SimpleMtkBtFw.kext | [项目源码](https://github.com/laobamac/SimpleMtkBtFw/tree/1.0.0) | 启用 |
| AirportMtkWlan.kext | [1.5.0 源码](https://github.com/flxxxxddd/SimpleMtkWlan/tree/v1.5.0) · [Tahoe 发布包](https://github.com/flxxxxddd/SimpleMtkWlan/releases/download/v1.5.0/AirportMtkWlan-Tahoe-1.5.0-RELEASE.zip) | 启用 |
| UTBMap.kext | 本机 USB 端口映射 | 启用 |
| VirtualSMC.kext | [项目源码](https://github.com/acidanthera/VirtualSMC) | 启用 |
| VoodooI2C.kext | [项目源码](https://github.com/VoodooI2C/VoodooI2C/tree/0271bbddda610fdbb553a37a7edf061054d1ff20) | 启用 |
| VoodooI2CHID.kext | [项目源码](https://github.com/VoodooI2C/VoodooI2CHID/tree/27277936bc16c215ae7f9b31e76e3231778d04bd) | 启用 |
| VoodooPS2Controller.kext | [项目源码](https://github.com/acidanthera/VoodooPS2/tree/7eab4a344d901d1e4aa6ece4189ecde5a7356287) | 启用 |
| XhciNudge.kext | [项目源码](https://github.com/MonkaKokosowa/XhciNudge) | 启用 |

VoodooI2C 的 [构建包](https://github.com/dortania/build-repo/releases/download/VoodooI2C-0271bbd/release.zip) 同时包含 VoodooI2CHID。其 [VoodooGPIO 源码](https://github.com/VoodooI2C/VoodooGPIO/tree/d415406ecf25b5e322d3db9a4abab5719106fac1) 随主项目固定版本。[VoodooInput 源码](https://github.com/acidanthera/VoodooInput)。Realtek 与 MediaTek 固件各自的分发声明和驱动许可见 [LICENSES](LICENSES)。

## 固件与系统引导文件

- 显卡 VBIOS 取自各自机器；保留的 GPU 属性位置见公开配置。
- `EFI/APPLE/UPDATERS/` 属于 Apple 固件更新内容。请使用 [Apple 的 macOS 下载和安装渠道](https://support.apple.com/102662)。
- `EFI/Microsoft/` 属于 Windows 引导环境。双系统用户可用自己的 Windows 安装介质按 [Microsoft BCDBoot 文档](https://learn.microsoft.com/windows-hardware/manufacture/desktop/bcdboot-command-line-options-techref-di) 建立。
