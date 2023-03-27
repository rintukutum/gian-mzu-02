# 02-data-frame

tutor_detail <- data.frame(
  name = c('R K', 'G G'),
  fn = c('Rintu', 'Guruswami'),
  uni = c('AU','MZU')
)
# ctrl + enter
dim(tutor_detail) # number of rows & columns

nrow(tutor_detail) # number of rows

ncol(tutor_detail) # number of cols

#------

my_df <- data.frame(
  sn = 1:5
)
 
mdf <- data.frame(
  rsn = 10:1,
  score = 80:71,
  diff = -(10:1),
  info = LETTERS[10:1]
)

# using $ to access column
mdf$score

# using [,] to access rows and columns
mdf[2,] # accessing row 2 and all columns
mdf[,3] # accessing column 3 and all rows
mdf[1,2] # accessing row number 1 and column 2 (score)
mdf[1,'score']

colnames(mdf) # it will return all the column names
rownames(mdf) # it will return all the row names

rownames(mdf) <- letters[1:10] # assign letters from a to j to our row names
mdf['a','score']
mdf['d','diff']
mdf['f','diff']
mdf['f', c('diff','info')]
mdf['h',c('rsn','diff')]
mdf['h', c('info','diff')]
mdf[c('e','f'),'rsn']
mdf[c('f','g'), c('score','diff')]
mdf[c('g','f'),'info']
mdf[c('g','f'),c('info','rsn')]
mdf['j','diff']
mdf[c('j','e','a'),c('rsn','diff')]

#-------------- LIST 
my_list <- list(
  my_df = mdf,
  my_name = 'Rintu',
  my_parents = c('KK Kutum', 'P Kutum'),
  my_p_age = c(55, 57),
  logical_out = TRUE,
  hello_list = list(
    name = 'hello'
  )
)

#' 45 mins (30 Marks) 20 Marks (No certificate)
#' Q1. Create a vector with participants names
#' 
#' Q2. Create a data frame with all the 
#' participants names (name), phone number 
#' (phno) and email address as (email)
#' 
#' Q3. Create a list of participants with
#' their detail information about their native &
#' university information
