cd ~/gitrepos/qmk_firmware
util/docker_cmd.sh qmk c2json /qmk_userspace/keyboards/beekeeb/piantor/keymaps/mioskretc/keymap.c --no-cpp -o k.json
cp k.json ~/gitrepos/qmk_userspace/keyboards/beekeeb/piantor/keymaps/mioskretc
