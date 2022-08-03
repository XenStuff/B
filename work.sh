make clean
cd && mv ~/roms/xdroid-oss-twelve/* ~/b
cd ~/roms/xdroid-oss-twelve
rm -rf .repo
repo init --depth=1 --no-repo-verify -u https://github.com/xdroid-oss/xd_manifest -b twelve -g default,-mips,-darwin,-notdefault > ss
git clone https://github.com/XenStuff/manifest --depth 1 -b xd-bery .repo/local_manifests > ss
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all) || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all) > sync && rm sync
rm -rf vendor/google/gms vendor/xdroid vendor/xdroidui f*/b*
git clone https://github.com/XenStuff/xd_frameworks_base-1 frameworks/base --depth=1
git clone https://github.com/XenStuff/xd_vendor_xdroidui  vendor/xdroidui  --depth=1
git clone https://github.com/xenxynon/xd_vendor_xdroid -b bery vendor/xdroid  --depth=1
git clone https://gitlab.com/xenxynon/gg -b 12.1 vendor/gms --depth=1
