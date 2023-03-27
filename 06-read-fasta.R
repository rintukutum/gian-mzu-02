# 06-read-fasta
gene <- readLines(con = 'data/gene.fna')

length(gene)

gene_name <- gene[1]
#gene_atgc <- gene[2:27]
gene_atgc <- gene[-1]
length(gene_atgc)
length(gene_name)

gene_seq <- paste(gene_atgc, collapse = '')
atgc <- strsplit(x = gene_seq, split = '')[[1]] 
# strsplit('RINTU', split='')
# strsplit('RINTU', split='')[[1]]
length(atgc)
unique(atgc)

#------ EXAMPLE
idx_A <- c('A', 'A', 'T') == 'A'
pos_A <- which(idx_A)
length(pos_A)



idx_A <- atgc == 'A'
pos_A <- which(idx_A)
count_A <- length(pos_A)

idx_T <- atgc == 'T'
pos_T <- which(idx_T)
count_T <- length(pos_T)

idx_G <- atgc == 'G'
pos_G <- which(idx_G)
count_G <- length(pos_G)

idx_C <- atgc == 'C'
pos_C <- which(idx_C)
count_C <- length(pos_C)


gc <- (count_G + count_C)/(count_A + count_G + count_T + count_C)
gc*100
total <- (count_A + count_G + count_T + count_C)

(count_A/total)*100
(count_T/total)*100
(count_G/total)*100
(count_C/total)*100


result <- c('A' = count_A, 'T' = count_T, 'G' = count_G, 'C' = count_C)
atgc_perc <- (result/sum(result))*100
barplot(atgc_perc, ylim = c(0,35))


# function for nucleotide
find_nuc_count <- function(nuc){
  idx_nuc <- atgc == nuc
  pos_nuc <- which(idx_nuc)
  count_nuc <- length(pos_nuc)
  return(count_nuc)
}


# unique values
uniq_atgc <- unique(atgc)

count_atgc <- c()
for(i in 1:length(uniq_atgc)){
  count_atgc[i] <- find_nuc_count(nuc = uniq_atgc[i])
}
  
names(count_atgc) <- uniq_atgc

