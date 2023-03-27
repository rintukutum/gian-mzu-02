rm(list=ls())
a = 1
b = 1

many_names = c(
  'R Khana',
  'S Swami',
  'G G'
)

get_surname = function(name){
  sn = strsplit(x=name, split=" ")[[1]][2]
  return(sn)
}

sur_names = c()
for(i in 1:3){
  sur_names[i] = get_surname(name = many_names[i])
}

# naming
my_var <- c(a = 'Alu', b = 'Ball', c = 'Cat')
names(my_var)

# index with name
my_var['c']


