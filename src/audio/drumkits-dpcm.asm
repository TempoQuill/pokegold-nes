Drumkits_DPCM:
	.dw SampleSet0
	.dw SampleSet1
	.dw SampleSet0
	.dw SampleSet3
	.dw SampleSet4
	.dw SampleSet5
	.dw SfxSampleSet0
SampleSet0:
	.dw NoSample
	.dw SMP_0_1
	.dw SMP_0_2
	.dw SMP_0_3
	.dw SMP_0_4
	.dw SMP_0_5
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw SMP_0_9
	.dw SMP_0_10
	.dw SMP_0_11
	.dw NoSample
SampleSet1:
	.dw NoSample
	.dw NoSample
	.dw SMP_0_9
	.dw SMP_0_10
	.dw SMP_0_11
	.dw NoSample
	.dw NoSample
	.dw SMP_1_7
	.dw NoSample
	.dw NoSample
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
SampleSet2:
	.dw NoSample
	.dw SMP_0_1
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
	.dw SMP_0_5
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw SMP_0_9
	.dw SMP_0_10
	.dw SMP_0_11
	.dw NoSample
SampleSet3:
	.dw NoSample
	.dw SMP_3_1
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_4
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw SMP_3_11
	.dw SMP_3_12
SampleSet4:
	.dw NoSample
	.dw NoSample
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_4
	.dw SMP_4_5
	.dw NoSample
	.dw NoSample
	.dw SMP_4_8
	.dw SMP_4_9
	.dw NoSample
	.dw SMP_3_11
	.dw SMP_3_12
SampleSet5:
	.dw NoSample
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw SMP_0_5
	.dw NoSample
	.dw SMP_3_12
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_11
NoSample:
	dpcm_entry $0, DMC_3_0, DMC_3_0_END
SMP_0_1:
	dpcm_entry $f, DMC_0_1, DMC_0_1_END
SMP_0_2:
	dpcm_entry $f, DMC_0_2, DMC_0_2_END
SMP_0_3:
	dpcm_entry $f, DMC_0_3, DMC_0_3_END
SMP_0_4:
	dpcm_entry $f, DMC_0_4, DMC_0_4_END
SMP_0_5:
	dpcm_entry $e, DMC_0_5, DMC_0_5_END
SMP_0_9:
	dpcm_entry $f, DMC_0_9, DMC_0_9_END
SMP_0_10:
	dpcm_entry $e, DMC_0_9, DMC_0_9_END
SMP_0_11:
	dpcm_entry $e, DMC_0_11, DMC_0_11_END
SMP_1_7:
	dpcm_entry $f, DMC_0_11, DMC_0_11_END
SMP_1_10:
	dpcm_entry $e, DMC_1_10, DMC_1_10_END
SMP_1_11:
	dpcm_entry $e, DMC_1_11, DMC_1_11_END
SMP_1_12:
	dpcm_entry $e, DMC_1_12, DMC_1_12_END
SMP_3_1:
	dpcm_entry $f, DMC_3_1, DMC_3_1_END
SMP_3_2:
	dpcm_entry $f, DMC_3_2, DMC_3_2_END
SMP_3_3:
	dpcm_entry $e, DMC_3_3, DMC_3_3_END
SMP_3_4:
	dpcm_entry $f, DMC_3_4, DMC_3_4_END
SMP_3_11:
	dpcm_entry $f, DMC_3_11, DMC_3_11_END
SMP_3_12:
	dpcm_entry $e, DMC_3_12, DMC_3_12_END
SMP_4_5:
	dpcm_entry $e, DMC_4_5, DMC_4_5_END
SMP_4_8:
	dpcm_entry $e, DMC_4_8, DMC_4_8_END
SMP_4_9:
	dpcm_entry $e, DMC_4_9, DMC_4_9_END
SfxSampleSet0:
	.dw NoSample
	.dw SMP_EscapeRope
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
	.dw NoSample
SMP_EscapeRope:
	dpcm_entry $e, DMC_ESCAPE_ROPE, DMC_ESCAPE_ROPE_END
