#!/usr/bin/env bash

DIR__APPS="${HOME}/.local/share/applications"
DIR__BIN="${HOME}/Software/aseprite"
PATH__LAUNCHER="${DIR__APPS}/aseprite.desktop"

sudo chown -R $(id -u):$(id -g) ./build
mkdir -p "${DIR__BIN}" && mv ./build/bin/* "${DIR__BIN}"
mv "${DIR__BIN}/aseprite.desktop" "${DIR__APPS}/"

# update icon path
sed -i "s|Icon=aseprite|Icon=${DIR__BIN}/data/icons/ase256.png|" "${PATH__LAUNCHER}"
# update exec path
sed -i "s|^Exec=|Exec=${DIR__BIN}/|" "${PATH__LAUNCHER}"
# comment out unnecessary items 
sed -i "/^TryExec/s/^/#/" "${PATH__LAUNCHER}"
# add working dir
echo "Path=${DIR__BIN}" >> "${PATH__LAUNCHER}"
# mark the Launcher as Trusted
chmod +x "${PATH__LAUNCHER}"

source "${HOME}/.profile"
