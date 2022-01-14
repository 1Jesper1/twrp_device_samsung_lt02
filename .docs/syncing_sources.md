# Syncing TWRP sources

```bash
mkdir ~/TWRP
cd ~/TWRP

mkdir ~/.bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
python3 ~/.bin/repo init --depth=1 -u https://github.com/T11x-TWRP/platform_manifest_twrp_omni.git -b twrp-4.4
python3 ~/.bin/repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bun --prune -j$(nproc --all)
```

This *WILL* use all cores to sync.
