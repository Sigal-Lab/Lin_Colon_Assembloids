### R code used for analysis of Lin et al., Establishment of gastrointestinal assembloids to study the interplay between epithelial crypts and their mesenchymal niche

Published in Nature Communications 2023, https://doi.org/10.1038/s41467-023-38780-3

To reproduce the manuscript figures: 

  - Download single cell data files from GEO according to README files in the following folders:
     - Data/filtered_matrices
     - Data/external/GSE114374_Kinchen_Stroma
     - Data/external/GSE172261_Mouse_Colon_Stroma

  - make sure you have R(>= 4.2) and the following R packages installed:
    cowplot data.table dplyr future ggplot2 grid GSVA harmony homologene knitr magrittr pheatmap readxl Seurat writexl
  - run Code/run_all.R in R (>= 4.2)
  - Results figures and intermediate file will be generated in folder Results and subfolders

