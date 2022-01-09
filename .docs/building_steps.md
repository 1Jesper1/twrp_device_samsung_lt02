# Building TWRP for the Samsung Galaxy Tab 3 Lite 7.0 (Marvell PXA986 Edition)

## Building Steps

First, [sync up](syncing_sources.md).

```bash
cd ~/TWRP
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_j1pop3g-eng
mka recoveryimage
```

## Generated Files

- `recovery.img` *(optional)*
- **`recovery.tar`** *(recommended)*
