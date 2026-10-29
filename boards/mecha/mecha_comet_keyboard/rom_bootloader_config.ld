/*
 * Copyright (c) 2026 Mecha Systems
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/* The boot ROM reads the BCA at flash offset 0x3C0 (RM table 13-3). */
. = 0x3C0;
KEEP(*(.mecha_rom_bca))
