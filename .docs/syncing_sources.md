# Syncing TWRP sources

```bash
mkdir ~/TWRP
cd ~/TWRP

mkdir ~/.bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
python3 ~/.bin/repo init --depth=1 -u https://github.com/minimal-manifest-tplatform_manifest_twrp_omni.git -b twrp-4.4-deprecated
python3 ~/.bin/repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bun--prune -j$(nproc --all)
for i in device kernel; do
  rm -rf $i/${{env.OEM}}/${{env.DEVICE}}
  git clone --single-branch https://github.com/TriDiscord/twrp_$i\_${{env.OEM}}_${.DEVICE}}.git $i/${{env.OEM}}/${{env.DEVICE}}
done

git clone --branch android-4.4.4_r1 --single-branch https://android.googlesource.com platform/external/mksh platform/external/mksh
```

This *WILL* use all cores to sync.
