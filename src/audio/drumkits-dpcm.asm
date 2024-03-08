Drumkits_DPCM:
	.dw SampleSet0
	.dw SampleSet0
	.dw SampleSet0
	.dw SampleSet3
	.dw SampleSet4
	.dw SampleSet5
SampleSet0:
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0_5
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
SampleSet1:
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
SampleSet2:
	.dw SMP_0
	.dw SMP_0
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
	.dw SMP_0_5
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
SampleSet3:
	.dw SMP_0
	.dw SMP_3_1
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_4
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_3_11
	.dw SMP_3_12
SampleSet4:
	.dw SMP_0
	.dw SMP_0
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_4
	.dw SMP_4_5
	.dw SMP_0
	.dw SMP_0
	.dw SMP_4_8
	.dw SMP_4_9
	.dw SMP_0
	.dw SMP_3_11
	.dw SMP_3_12
SampleSet5:
	.dw SMP_0
	.dw SMP_1_10
	.dw SMP_1_11
	.dw SMP_1_12
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0
	.dw SMP_0_5
	.dw SMP_0
	.dw SMP_3_12
	.dw SMP_3_2
	.dw SMP_3_3
	.dw SMP_3_11
SMP_0:
	dpcm_entry $0, DMC_3_0, DMC_3_0_END
SMP_0_5:
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
