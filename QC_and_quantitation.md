## Qualtiy control

Trimming, mapping, FastQC and FastqScreen reports were collated using MultiQC.

Post-mapping QC was performed with Seqmonk and Vistories assessing data distribution, data grouping, duplication, coverage, enrichment and any other specifics can be viewed here for each of the marks:

- [TET ATAC](./QC/pluripotency_exit_TET_ATAC_pmQC.html)
- [TET CTCF](./QC/pluripotency_exit_TET_CTCF_pmQC.html)
- [TET H3K4me1](./QC/pluripotency_exit_TET_K4me1_pmQC.html)
- [TET H3K4me3](./QC/pluripotency_exit_TET_K4me3_pmQC.html)
- [TET H3K27ac](./QC/pluripotency_exit_TET_K27ac_pmQC.html)
- [TET H3K27me3](./QC/pluripotency_exit_TET_K27me3_pmQC.html)
- [TET RNA](./QC/pluripotency_exit_TET_RNA_pmQC.html)

- [DNMT ATAC](./QC/pluripotency_exit_DNMT_ATAC_pmQC.html)
- [DNMT CTCF](./QC/pluripotency_exit_DNMT_CTCF_pmQC.html)
- [DNMT H3K4me1](./QC/pluripotency_exit_DNMT_K4me1_pmQC.html)
- [DNMT H3K4me3](./QC/pluripotency_exit_DNMT_K4me3_pmQC.html)
- [DNMT H3K27ac](./QC/pluripotency_exit_DNMT_K27ac_pmQC.html)
- [DNMT H3K27me3](./QC/pluripotency_exit_DNMT_K27me3_pmQC.html)
- [DNMT RNA](./QC/pluripotency_exit_DNMT_RNA_pmQC.html)

- [DNMT and TET WGBS](./QC/pluripotency_exit_DNMT_TET_BS_QC.html)
- [DNMT and TET HMCP](./QC/pluripotency_exit_DNMT_TET_hmC_QC.html)


## Excluded regions

ChIP input samples were used to blacklist coverage outliers and some regions which were represented differently in DNMT and TET cell lines. Details can be found in this [Seqmonk Vistory](pluirpotency_exit_input_comparison.html).




