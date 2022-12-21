---
hide:
  - footer
---

## Qualtiy control

Trimming, mapping, FastQC and FastqQScreen reports were collated using MultiQC. WGBS and PCHiC sample quality was assessed with Bismark and HiCUP reports, respectively. 

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


## Quantitation

PCHiC data as given in linear CHiCAGO scores, if an interaction was found in both directions, the maximum score was used.

To integrate PCHiC with ChIP, ATAC and HMCP data, reads were quantitated across HindIII fragments and normalised for length and total number of reads in the sample (RPKM).

WGBS data was quantitated across 100 CpG using the Seqmonk methylation quantitation pipeline (min count per position = 1, min number of observations = 20) and is expressed in percent. To obtain methylation levels on HindIII fragment resolution, fragments were overlapped with 100 CpG windows. If a HindIII fragment overlapped with more than one 100 CpG window, the average was taken.

All values are replicate averages.


## Data integration

PCHiC interacting pairs form the basis for UMAP and network representations. Quantitated data from different modalities were collated in a data table in which rows represent an interaction pair and columns are attributes of the interaction (PCHiC) or the respective bait and promoter interacting region (PIR) (ATAC, ChIP, HMCP, WGBS). Values are linear. For some visualisations (mainly were level of the mark was represented as colour) capped values were used to obtain a more reasonable scale. Caps were introduced at 3x MAD (mean absolute deviation). Both bait and PIR were annotated with promoters (overlapping gene start coordinates); if more than one promoter was present in the HindIII fragment, the most upstream was used. Data tables for both raw and capped quantitations by interaction pair are provided as processed data on GEO.


 




