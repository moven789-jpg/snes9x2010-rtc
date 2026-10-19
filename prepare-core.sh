#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
git init core
git -C core remote add origin https://github.com/libretro/snes9x2010.git
git -C core fetch --depth 1 origin fe690dd321fa5a46b5234a2bde089d2518c62b0e
git -C core checkout --detach FETCH_HEAD
git -C core apply --check ../spc7110-offline-rtc.patch
git -C core apply ../spc7110-offline-rtc.patch
