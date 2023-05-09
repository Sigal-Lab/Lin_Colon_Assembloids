library(knitr)
setwd("Code")

# Epithelial samples
input_files = c("Data_import.Rmd",
                "Preprocessing_SCT_Harmony.Rmd",
                "Preprocessing_SCT_Harmony_tissue_organoid_assemboid_individually.Rmd",
                "Cluster_identification_SCT_Harmony.Rmd",
                "Visualizations_AOT_individually.Rmd")
rmd_folder = "Epithelial"
for (f in input_files) rmarkdown::render(file.path(rmd_folder, f), output_format = "html", output_dir = rmd_folder)

# Stromal in-vivo samples
## Kinchen et al. 
input_files = c("Data_import.Rmd",
                "Preprocessing.Rmd",
                "Cluster_identification.Rmd")
rmd_folder = "Stroma_in_vivo/GSE116222_Kinchen_Epithelial"
for (f in input_files) rmarkdown::render(file.path(rmd_folder, f), output_format = "html", output_dir = rmd_folder)

## Jasso et al. 
input_files = c("Data_import.Rmd",
                "Preprocessing.Rmd",
                "Cluster_identification.Rmd")
rmd_folder = "Stroma_in_vivo/GSE172261_Jasso_Mouse_Colon_Stroma"
for (f in input_files) rmarkdown::render(file.path(rmd_folder, f), output_format = "html", output_dir = rmd_folder)

## Jasso + Kinchen combined
input_files = c("Preprocessing_with_Jasso_mouse_colon_in_vivo_SCT.Rmd", 
                "Cluster_identification_Kinchen_and_Jasso.Rmd",
                "Final_Visualizations_Kinchen_and_Jasso.Rmd")
rmd_folder = "Stroma_in_vivo/combined"
for (f in input_files) rmarkdown::render(file.path(rmd_folder, f), output_format = "html", output_dir = rmd_folder)

# Assembloid stroma cells
input_files = c("Import_and_Preprocessing_Assembloids_SCT_CC_adj.Rmd", 
                "Cluster_identification_Assembloids_V2_simple_clusters.Rmd",
                "Final_Visualizations_V2_simple_clusters.Rmd")
rmd_folder = "Stromal"
for (f in input_files) rmarkdown::render(file.path(rmd_folder, f), output_format = "html", output_dir = rmd_folder)
