Drumkits_DPCM:
	.dw SampleSet0
	.dw SampleSet0
	.dw SampleSet0
	.dw SampleSet3
SampleSet0:
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
SMP_0:
	dpcm_entry $0, DMC_3_0, DMC_3_0_END
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
	dpcm_entry $f, DMC_3_12, DMC_3_12_END
