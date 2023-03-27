# 07-automate
# 1. sequence (input)
# 2. read
# 3. take out the name & sequence
# 4. combine sequences and split into A, T, G, C
# 5. count A, T, G, C (output)

#----------
# READ FUNCTION
check_Nuc_AA <- function(seq){
  nuc <- c('A','T','G','C')
  aa <- c('A','V','K','G','I','W','Y','F','H','P','S',
          'T','D','E','N','Q','M','R','L','C')
  nuc_comp <- nuc[nuc %in% seq]
  aa_comp <- aa[aa %in% seq]
  if(length(nuc_comp) == length(aa_comp)){
    print('Nucleotide')
    return('NUC')
  }else{
    print('Amino acid')
    return('AA')
  }
}

read_seq <- function(path){
  input <- readLines(con = path)
  input_name <- input[1]
  input_seq <- input[-1]
  input_atgc <- paste(input_seq, collapse = '')
  atgc <- strsplit(input_atgc, split = '')[[1]]
  status <- check_Nuc_AA(seq = atgc)
  if(status == 'NUC'){
    output <- list(
      name = input_name,
      atgc = atgc
    )
  }
  if(status == 'AA'){
    output <- list(
      name = input_name,
      aa = atgc
    )
  }
  return(output)
}
# INPUT <- 'RINTU KUTUM'
# OUTPUT 
# RK 
nuc <- read_seq(path = "data/gene.fna")

# function for nucleotide
find_nuc_count <- function(atgc,nuc){
  idx_nuc <- atgc == nuc
  pos_nuc <- which(idx_nuc)
  count_nuc <- length(pos_nuc)
  return(count_nuc)
}

atgc_count <- function(atgc){
  nucs <- c('A', 'T', 'G', 'C')
  nucs_count <- c()
  for(i in 1:length(nucs)){
    nucs_count[i] <- find_nuc_count(atgc = atgc, nuc = nucs[i])
  }
  names(nucs_count) <- nucs
  return(nucs_count)
}

atgc_count(atgc = nuc$atgc)
pro <- read_seq(path = "data/protein.faa")


#----------------- BASIC
# strsplit()
x_out <- strsplit(x = 'ATGC',split = "")
x_out[[1]]

paste(c('A','C'), sep='') 
# A & C are elements of a vector
paste('A','C', sep='') 
# A & C are elements so we can join with sep
paste(c('A','C'), collapse ='')
# to join A & C of a vector use collapse 

# mode is a function to check type of data
mode()

is.vector() 
# function to check if the variable 
# is a vector

is.data.frame() 
# function to check if the variable is 
# a data frame

is.list()
# function to check if the variable is a list

my_vec <- c(a = 1, 10, c= 20)
my_list <- list(
  a = 1,
  10,
  c = 100
)
my_df <- data.frame(
  a = c(1,4,888888888),
  c(10,100,9),
  c = c(100,1,0)
)
colnames(my_df)[2] <- 'b'



y <- list(
  name = 'a',
  by = 'bye'
)

yy <- c(
  name = 'a',
  by = 'bye'
)

test_list = list()
for(i in 1:26){
  test_list[[i]] <- sample(letters,size = 8)
}

names(test_list) <- rev(LETTERS)



#--------- FUNCTION
INPUT <- c('A','A','T','A')
a = 3
t = 1
g = 0
c = 0
find_atgc <- function(INPUT){
  # operation
  a = length(which(INPUT == 'A'))
  t = length(which(INPUT == 'T'))
  g = length(which(INPUT == 'G'))
  c = length(which(INPUT == 'C'))
  OUTPUT <- c(a=a,t=t,g=g,c=c)
  return(OUTPUT)
}

get_nuc <- function(x){
  output <- strsplit(x, split = '')[[1]]
  return(output)
}
find_atgc(INPUT = c('A','T',"T"))
find_atgc(
  INPUT = get_nuc(
    x = 'AATCGAGAGAGAGGATATATATATATTA'
    )
)

add_func <- function(a,b){
  B <- 15
  temp_function <- function(){
    a = 10
    b = 20
    return(a+b)
  }
  output <- a + B
  return(output)
}





#----------------
INPUT <- 'R KUTUM'
xx <- strsplit(INPUT, split = '[[:space:]]')
paste(rev(xx[[1]]),collapse = ' ')

rev_name <- function(x){
  xx <- strsplit(x, split = '[[:space:]]')
  output <- paste(rev(xx[[1]]),collapse = ' ')
  return(output)
}

#----------------