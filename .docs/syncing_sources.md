# Syncing TWRP sources

```bash
mkdir ~/TWRP
cd ~/TWRP

CORES_USED=$(nproc --all)
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-4.4-deprecated
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$CORES_USED

for i in device kernel; do
  rm -rf $i/samsung/goya
  git clone --single-branch https://github.com/TriDiscord/twrp_$i\_samsung_goya.git $i/samsung/goya
done
```

This *WILL* use all cores to sync by default, but you can modify the `CORES_USED` variable if needed.
