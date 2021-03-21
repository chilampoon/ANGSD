# ANGSD project

Sex differences of normal human putamen tissues on the transcriptomic level

## Introduction

A recent published [study](https://www.pnas.org/content/118/2/e2016150118.short) (Ketchesin et al 2021) identified diurnal rhythms in transcript expression across three striatal subregions (caudate, putamen, and nucleus accumbens), with postmortem brain tissues from subjects without psychiatric or neurological disorders. Using time-of-death (TOD) analysis, they found that core circadian clock genes are rhythmic across all three regions and show strong phase concordance across regions, but the putamen contains a much larger number of significantly rhythmic transcripts than the other two regions.

Here I would like to use their datasets to test whether there are transcripts with differential expression between female's and male's putamen. Confounders mentioned in the metadata (race, time of death, etc.) will be corrected. Regarding the sample size, it's 6 female and 6 male for now.

Hypotheses:

1. There are indeed differentially expressed genes identified in putamens of different genders.
2. Some of these DEGs have the similar phase concordance, while some others not. (let's see if we can identify rhythmic genes with this small sample size...)

## Data

- GEO: GSE160521 https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE160521
- Data table: https://www.ncbi.nlm.nih.gov/Traces/study/?acc=PRJNA673437&o=acc_s%3Aa

All samples were 75-bp paired-end short reads from the Illumina NextSeq 500 platform.

Selected samples: see this [table](data/SraRunTable.txt)

## Processing

- Alignment: HISAT2
- QC: FastQC, BamQC
- Quantification: featureCounts
- Differential expression analysis: DESeq2


