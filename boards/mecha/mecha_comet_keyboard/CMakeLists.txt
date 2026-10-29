# Copyright (c) 2026 Mecha Systems
# SPDX-License-Identifier: BSD-3-Clause

# The boot ROM reads its configuration at a fixed flash offset. Add it only
# when the image starts at the beginning of flash, the same condition the SoC
# uses for the flash configuration field.
if(CONFIG_MCXC_FLASH_CONFIG)
  zephyr_library()
  zephyr_library_sources(rom_bootloader_config.c)

  # ROM_START sort keys are compared as text. "0x3c0" comes after the vector
  # table ("0x0vectors", "0x1vectors") and before the flash configuration
  # field ("0x400").
  zephyr_linker_sources(ROM_START SORT_KEY 0x3c0 rom_bootloader_config.ld)
endif()
