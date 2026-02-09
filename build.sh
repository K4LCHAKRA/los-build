
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
/opt/crave/resync.sh


rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common
rm -rf hardware/xiaomi


git clone https://github.com/mojito-a16qpr2/device_xiaomi_mojito.git -b 16 device/xiaomi/mojito
git clone https://github.com/mojito-a16qpr2/device_xiaomi_sm6150-common.git -b 16 device/xiaomi/sm6150-common
git clone https://github.com/mojito-a16qpr2/kernel_xiaomi_mojito.git -b inline-rom kernel/xiaomi/mojito

git clone https://gitlab.com/mojito22/android_vendor_xiaomi_mojito.git -b qpr1 vendor/xiaomi/mojito
git clone https://gitlab.com/mojito22/android_vendor_xiaomi_sm6150-common.git -b 16 vendor/xiaomi/sm6150-common
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git -b mojito hardware/xiaomi


. build/envsetup.sh
breakfast mojito user
make bacon
