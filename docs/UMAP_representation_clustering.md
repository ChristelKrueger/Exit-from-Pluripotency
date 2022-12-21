---
hide:
  - footer
---

## UMAP representation

To generate a two dimensional representation of the interaction pair attributes, Uniform Manifold Approximation and Projection for Dimension Reduction (UMAP) was performed. Specifically, centred and scaled linear quantitations of the different sequencing data modalities from the EpiLC TET WT condition were subjected to UMAP using the uwot package with spectral initialisation (Settings: min_dist = 0.01, n_neibors = 2, scale = TRUE). 



## Clustering

To produce input for clustering, dimensionality reduction to 30 dimensions was applied to the same quantitations of interaction pair attributes (uwot, min_dist = 0.01, n_neibors = 25, scale = TRUE). Clustering was then performed by Expectation Maximisation for 20 clusters using WEKA (Scheme: weka.clusterers.EM -I 100 -N 20 -X 10 -max -1 -ll-cv 1.0E-6 -ll-iter 1.0E-6 -M 1.0E-6 -K 10 -num-slots 1 -S 100 ). The number of clusters was chosen empirically.
