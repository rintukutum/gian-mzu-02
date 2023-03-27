# 05-install-package-r
# CRAN Task Views
#' HW1: write a report on Machine Learning 
#' & Statistical Learning (Monday)
#' HW2: write a report on phylogenetics (Monday)
#' HW3: write a short report about Bioconductor (Monday)
install.packages("ctv")
ctv::install.views("Phylogenetics")

# BiocManager
install.packages('BiocManager')
BiocManager::install('clusterProfiler')

# https://etherpad.wikimedia.org/p/gian-mzu-ossc-genomics

library(clusterProfiler)

data(geneList, package="DOSE")
gene <- names(geneList)[abs(geneList) > 2]

length(gene)
BiocManager::install('org.Hs.eg.db')

library(org.Hs.eg.db)
ego <- enrichGO(gene = gene,
                universe = names(geneList),
                OrgDb = org.Hs.eg.db,
                ont = "CC",
                pAdjustMethod = "BH",
                pvalueCutoff  = 0.01,
                qvalueCutoff  = 0.05,
                readable      = TRUE)
View(ego@result)
