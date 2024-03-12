FIRST_MUSIC_COMMAND = $d0

.enum FIRST_MUSIC_COMMAND
octave_cmd:		.dsb 1
			.dsb 7
note_type_cmd:		.dsb 1
transpose_cmd:		.dsb 1
tempo_cmd:		.dsb 1
duty_cycle_cmd:		.dsb 1
volume_envelope_cmd:	.dsb 1
pitch_sweep_cmd:	.dsb 1
duty_cycle_pattern_cmd:	.dsb 1
toggle_music_cmd:	.dsb 1
pitch_slide_cmd:	.dsb 1
vibrato_cmd:		.dsb 1
staccato_cmd:		.dsb 1
toggle_drum_cmd:	.dsb 1
dummy_e4_cmd:		.dsb 1
dummy_e5_cmd:		.dsb 1
pitch_offset_cmd:	.dsb 1
relative_pitch_cmd:	.dsb 1
env_sequence_cmd:	.dsb 1
tempo_relative_cmd:	.dsb 1
restart_channel_cmd:	.dsb 1
new_song_cmd:		.dsb 1
sfx_priority_on_cmd:	.dsb 1
sfx_priority_off_cmd:	.dsb 1
sound_jump_ram_cmd:	.dsb 1
dummy_ef_cmd:		.dsb 1
sfx_toggle_drum_cmd:	.dsb 1
dummy_f1_cmd:		.dsb 1
dummy_f2_cmd:		.dsb 1
dummy_f3_cmd:		.dsb 1
dummy_f4_cmd:		.dsb 1
dummy_f5_cmd:		.dsb 1
dummy_f6_cmd:		.dsb 1
dummy_f7_cmd:		.dsb 1
dummy_f8_cmd:		.dsb 1
set_sound_event_cmd:	.dsb 1
set_condition_cmd:	.dsb 1
sound_jump_if_cmd:	.dsb 1
sound_jump_cmd:		.dsb 1
sound_loop_cmd:		.dsb 1
sound_call_cmd:		.dsb 1
sound_ret_cmd:		.dsb 1
.ende

MACRO sound_header total channel, address
	.db total - 1 << 5 | channel - 1
	.dw address
ENDM

MACRO sound_subheader channel, address
	.db channel - 1
	.dw address
ENDM

MACRO note pitch, length
p = pitch << 4
l = length - 1
	.db p + l
ENDM

MACRO drum_note id, length
	note id, length ; drum instrument, length
ENDM

MACRO rest length
	note 0, length
ENDM

MACRO square_note length, mode, param, freq
	.db length
m = mode << 4
	IF param < 0
		.db m + 8 + (param * -1)
	ELSE
		.db m + param
	ENDIF
f = freq ^ $7ff
	.dw f
ENDM

MACRO noise_note length, mode, param, freq
	.db length
m = mode << 4
	IF param < 0
		.db m + 8 + (param * -1)
	ELSE
		.db m + param
	ENDIF
	.db freq
ENDM

MACRO dpcm_note length, offset, sum
	.db length
	.db PRG_DPCM0 + (offset >> 9)
	.db sum - offset
	.db (offset & %111111100) >> 2
ENDM

MACRO dpcm_entry pitch, offset, sum
	.db PRG_DPCM0 + (offset >> 9)
	.db pitch
	.db sum - offset
	.db (offset & %111111100) >> 2
ENDM

MACRO octave oct
	.db octave_cmd + (oct ^ %111) ; octave
ENDM

MACRO note_type length, mode, param
m = mode << 4
	.db note_type_cmd
	.db length
	IF param < 0
		.db m + 8 + (param * -1)
	ELSE
		.db m + param
	ENDIF
ENDM

MACRO drum_speed length
	.db note_type_cmd
	.db length
ENDM

MACRO transpose oct, pitch
	.db transpose_cmd
o = oct << 4
	.db o + pitch
ENDM

MACRO tempo speed
	.db tempo_cmd
	.dh speed
	.dl speed
ENDM

MACRO duty_cycle no
	.db duty_cycle_cmd
	.db no
ENDM

MACRO volume_envelope mode, param
m = mode << 4
	.db volume_envelope_cmd
	IF param < 0
		.db m + 8 + (param * -1)
	ELSE
		.db m + param
	ENDIF
ENDM

MACRO pitch_sweep period, inc
	.db pitch_sweep_cmd
p = ((period + 7) & %1111) << 4
	IF inc < 0
	i = 8 - inc
		.db p + (i * -1)
	ELSE
	i = 8 - inc
		.db p | %1000 + i
	ENDIF
ENDM

MACRO duty_cycle_pattern duty1, duty2, duty3, duty4
	.db duty_cycle_pattern_cmd
a = duty1 << 6
b = duty2 << 4
c = duty3 << 2
d = duty4
	.db a + b + c + d
ENDM

MACRO toggle_music
	.db toggle_music_cmd
ENDM

MACRO pitch_slide dur, oct, pitch
	.db pitch_slide_cmd
	.db dur - 1
o = oct ^ %111
	.db o + pitch
ENDM

MACRO vibrato delay, depth, timer
	.db vibrato_cmd
	.db delay
d = depth << 4
	.db d + timer
EnDM

MACRO staccato frames
	.db staccato_cmd
	.db frames
ENDM

MACRO drum_on id
	.db toggle_drum_cmd
	.db id
ENDM

MACRO drum_off
	.db toggle_drum_cmd
ENDM

MACRO dummy_e4
	.db dummy_e4_cmd
ENDM

MACRO dummy_e5
	.db dummy_e5_cmd
ENDM

MACRO pitch_offset mod
	.db pitch_offset_cmd
	.dh mod
	.dl mod
ENDM

MACRO relative_pitch pitch
	.db relative_pitch_cmd
	.db pitch
ENDM

MACRO env_sequence id
	.db env_sequence_cmd
	.db id
ENDM

MACRO tempo_relative offs
	.db tempo_relative_cmd
	IF offs < 0
		.db $100 + offs
	ELSE
		.db offs
	ENDIF
ENDM

MACRO restart_channel address
	.db restart_channel_cmd
	.dw address
ENDM

MACRO new_song id
	.db new_song_cmd
	.db id
ENDM

MACRO sfx_priority_on
	.db sfx_priority_on_cmd
ENDM

MACRO sfx_priority_off
	.db sfx_priority_off_cmd
ENDM

MACRO sound_jump_ram address
	.db sound_jump_ram_cmd
	.dw address
ENDM

MACRO dummy_ef
	.db dummy_ef_cmd
ENDM

MACRO sfx_drum_on id
	.db sfx_toggle_drum_cmd
	.db id
ENDM

MACRO sfx_drum_off
	.db sfx_toggle_drum_cmd
ENDM

MACRO dummy_f1
	.db dummy_f1_cmd
ENDM

MACRO dummy_f2
	.db dummy_f2_cmd
ENDM

MACRO dummy_f3
	.db dummy_f3_cmd
ENDM

MACRO dummy_f4
	.db dummy_f4_cmd
ENDM

MACRO dummy_f5
	.db dummy_f5_cmd
ENDM

MACRO dummy_f6
	.db dummy_f6_cmd
ENDM

MACRO dummy_f7
	.db dummy_f7_cmd
ENDM

MACRO dummy_f8
	.db dummy_f8_cmd
ENDM

MACRO set_sound_event
	.db set_sound_event_cmd
ENDM

MACRO set_condition condition
	.db set_condition_cmd
	.db condition
ENDM

MACRO sound_jump_if address
	.db sound_jump_if_cmd
	.dw address
ENDM

MACRO sound_jump address
	.db sound_jump_cmd
	.dw address
ENDM

MACRO sound_loop repeat, address
	.db sound_loop_cmd
	.db repeat
	.dw address
ENDM

MACRO sound_call address
	.db sound_call_cmd
	.dw address
ENDM

MACRO sound_ret
	.db sound_ret_cmd
ENDM
