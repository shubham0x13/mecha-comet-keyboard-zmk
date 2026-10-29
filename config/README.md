# Config

The keymaps and options of the keyboard.

- `mecha_comet_keyboard.keymap` is the QWERTY keymap. The QWERTZ and AZERTY keymaps are selected
  with `-DKEYMAP_FILE=`, see [`build.yaml`](../build.yaml).
- `mecha_comet_keyboard.conf` has the Kconfig options of every build. `debug.conf` turns on logging
  on LPUART0, at 115200 baud with TX on PTA2 and RX on PTA1. Add it with `-DEXTRA_CONF_FILE=` to a
  build without ZMK Studio; with ZMK Studio it does not fit.
- `common/omit.h` lists the behaviors that this keyboard does not have.
- `info.json` is the key layout for the [ZMK keymap editor](https://nickcoutsos.github.io/keymap-editor/).
  ZMK itself does not read it.

The editor does not follow `#include` lines, so the behaviors, combos and macros are written in each
keymap.
