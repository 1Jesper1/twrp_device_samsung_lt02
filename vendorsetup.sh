#!/bin/bash
# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

PRODUCT="omni"
DEVICE="goya"

for i in eng user; do
add_lunch_combo ${PRODUCT}_${DEVICE}-${i};
done
