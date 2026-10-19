# Snes9x 2010 Switch offline RTC

SPC7110 offline RTC patch for Far East of Eden Zero.

The build fetches official libretro/snes9x2010 at
`fe690dd321fa5a46b5234a2bde089d2518c62b0e`, applies the included patch,
runs RTC regression tests, and links the Switch core with RetroArch.
No ROMs or user saves are included.

**Initial migration:** use Establish Anchor first, confirm your existing game date,
close content normally, then enable Offline RTC. Past downtime is not added
when establishing the anchor. Keep original saves and use an isolated copy.

Switch compilation and NRO header/checksum verification succeeded.
Actual Switch hardware, game ROM and user saves have NOT been tested.

Successful build: https://github.com/moven789-jpg/snes9x2010-rtc/actions/runs/39221204162
Built file: `snes9x2010_rtc_libretro_libnx.nro` (20,157,862 bytes).
Build: devkitA64 r30-1 / GCC 16.1.0 / libnx 4.12.0-1.

The source artifact's initial README_RTC_KO.md predates this successful build;
its NOT BUILT statements describe the earlier local environment only.
For rebuilding, use this repository's root workflow and prepare-core.sh.
The embedded source workflow is an earlier draft; the root workflow contains
the verified dkp-pacman container correction.

Actions builds use the official devkitPro container and packages.
