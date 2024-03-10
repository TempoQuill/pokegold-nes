MACRO nsf_bank_define const
	.db (const << 1)
	.db (const << 1) + 1
ENDM
.org 0

IFNDEF NSF_FILE
; vulpreich header specs
; MAP: MMC5
; PRG: 1024K
; CHR: 1024K
; RAM: 128K + 2K internal + 1K Chip
; TOTAL: 2179K
	.db "NES", $1a ; NES + end of file command
	.db $40 ; 1 megabyte of PRG data
	.db $80 ; 1 megabyte of CHR data
	.db (MMC5 & $0f) * 16 | IGNORE_MIRRORING | BATTERY_RAM
	.db (MMC5 & $f0)      | NES_2_0
	.db 0, 0 ; unused
	.db $bb ; 128 kilobytes of PRG RAM
	.db 0
	.db 0 ; NTSC
	.db 0, 0, 0 ; unused
ELSE
	.db "NESM", $1a ; handshake
	.db $1 ; version
	.db 24 ; songs
	.db $1 ; starting song
	.dw LOAD
	.dw INIT
	.dw PLAY
	.db "POKEMON GOLD"
.pad $2e, $00
	.db "J. MASUDA, G. ICHINOSE, M. AOKI"
.pad $4e, $00
	.db "1999 Game Freak"
.pad $6e, $00
	.dw $411a ; NTSC
	nsf_bank_define PRG_Audio
	nsf_bank_define PRG_Music0
	nsf_bank_define PRG_DPCM0
	nsf_bank_define PRG_Home
	.dw 0 ; PAL, unused
	.db 0 ; this is an NTSC file
	.db %00001000 ; MMC5 registers enabled, 2A03 only though
	.dsb 4, 0 ; proceeding data is program data
ENDIF
