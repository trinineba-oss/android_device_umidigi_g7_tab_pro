# TWRP Device Tree for UMIDIGI G7 Tab Pro (g7_tab_pro)

This repository contains the TeamWin Recovery Project (TWRP) device tree for the **UMIDIGI G7 Tab Pro**, a device powered by the MediaTek Helio G99 (MT6789) SoC.

It was generated automatically using the **TWRP Recovery Device Tree Builder AI**.

## Device Specifications

| Feature | Specification |
| --- | --- |
| SoC | MediaTek Helio G99 (MT6789) / Arm64-v8a |
| Brand / Manufacturer | UMIDIGI / UMIDIGI |
| Screen Resolution | 1200x2000 |
| Header Version | 4 |
| Dynamic Partitions | Yes |
| FBE Decryption | Enabled (File-Based Encryption) |
| Recovery Type | vendor_boot |

## Repository Structure

Place this folder at `device/umidigi/g7_tab_pro` inside your TWRP source tree.

```text
device/umidigi/g7_tab_pro/
├── Android.mk
├── AndroidProducts.mk
├── BoardConfig.mk
├── device.mk
├── omni_g7_tab_pro.mk
├── recovery.fstab
├── vendorsetup.sh
├── configs/
│   └── gpio-keys.kl
└── README.md
```

## How to Compile

To compile TWRP recovery in your Linux build environment:

1. **Initialize TWRP Source Environment**:
   Initialize a TeamWin Recovery Project minimal manifest repo:
   ```bash
   repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
   repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
   ```

2. **Clone / Place this Device Tree**:
   Create the directory `device/umidigi/g7_tab_pro` and copy all these repository files into it.
   ```bash
   mkdir -p device/umidigi/g7_tab_pro
   # Git clone or copy this repo contents into device/umidigi/g7_tab_pro
   ```

3. **Source Environment Variables**:
   ```bash
   source build/envsetup.sh
   ```

4. **Lunch Target**:
   ```bash
   lunch omni_g7_tab_pro-eng
   ```

5. **Build TWRP**:
   ```bash
   mka vendorbootimage
   ```

## Flashing Instructions

After compilation, flash the generated image from `out/target/product/g7_tab_pro/` to your device:

```bash
# Reboot to bootloader
adb reboot bootloader

# Flash the recovery
fastboot flash vendor_boot out/target/product/g7_tab_pro/vendor_boot.img

# Reboot to recovery
fastboot reboot recovery
```

## Security & Maintenance
This device tree incorporates MediaTek MT6789 security policy files and FBE decryption blobs extracted from the active firmware. For issues with screen brightness, touch screen drivers, or FBE decryption, consult the compiler troubleshooting companion in the builder interface.
