
library(tidyverse)
options(scipen = 999)


## Functions required for cluster analysis

# transforming the clusters table from wide to long

wide_cluster_table_to_long <- function(cluster_table) {
  cluster_table %>% 
    rename_with(.cols = ends_with("Epi"), ~ gsub("Epi", "Epi_2",.)) %>% 
    rename_with(.cols = ends_with("ES"), ~ gsub("ES", "ES_0", .)) %>% 
    rename_with(.cols = starts_with("CHiC"), ~ gsub("CHiC", "bait_CHiC", .)) %>% 
    pivot_longer(9:last_col(), names_to = "sample") %>% 
    separate(sample, into = c("fragment", "mark", "line", "genotype", "stage", "day")) %>% 
    mutate(genotype = factor(genotype, levels = c("WT", "KO"))) %>% 
    mutate(stage = factor(stage, levels = c("ES", "Epi")))
}

## Global plotting options

theme_set(theme_bw(base_size = 16))
ES_colour <- "#EF7B45"
Epi_colour <- "#D84727"
DNMT_Epi_WT_colour <- "#009A8A"
DNMT_Epi_KO_colour <- "#4DBDB2"
TET_Epi_WT_colour <- "#703D8F"
TET_Epi_KO_colour <- "#A37AB1"
K27ac_colour <- "#AD0303"
K4me1_colour <- "#E69F00"
exp_colour <- "#999999"

up_colour <- "#AD0303"
down_colour <- "#0072B2"

blood_genes_colours <- c("#ff595e","#ff924c","#ffca3a","#8ac926","#1982c4","#6a4c93")

























