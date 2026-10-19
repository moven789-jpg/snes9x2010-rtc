# Snes9x 2010 Switch offline RTC

SPC7110 offline RTC patch for Far East of Eden Zero.

The build fetches official libretro/snes9x2010 at
`fe690dd321fa5a46b5234a2bde089d2518c62b0e`, applies the included patch,
runs RTC regression tests, and links the Switch core with RetroArch.
No ROMs or user saves are included.

**Initial migration:** use Establish Anchor first, confirm your existing game date,
close content normally, then enable Offline RTC. Past downtime is not added
when establishing the anchor. Keep original saves and use an isolated copy.

The Switch binary and real game have not yet been validated.
Download artifacts only from a successful Actions run.
Full instructions: `core/README_RTC_KO.md` in the source artifact.

Actions builds use the official devkitPro container and packages.
