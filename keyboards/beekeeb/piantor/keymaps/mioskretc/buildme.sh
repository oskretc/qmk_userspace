#!/bin/bash
# Create secrets.h
original_dir=$(pwd)
echo "lets pour in theeee secrets"
rm -f secrets.h
touch secrets.h
# Append content to secrets.h
echo "# pragma once" >> secrets.h
echo "#define P1_S \"$(pass show nordic/main/osto)\"" >> secrets.h
echo "#define P2_S \"$(pass show Personal/Gmail | head -n 1)\"" >> secrets.h
echo "#define P3_S \"$(pass show nordic/ntv/ntvuser)\"" >> secrets.h
echo "#define P4_S \"$(pass show nordic/main/osto_2025-10)\"" >> secrets.h

cd ~/gitrepos/qmk_firmware
util/docker_build.sh beekeeb/piantor:mioskretc

echo "Changing back to the original directory..."
cd "$original_dir"
rm secrets.h
