# 04-list
group_list <- list(
  name = c('S', 'R', 'S'),
  place = c('AD', 'KR', 'AS'),
  email = c(
    'ad@gmail.com',
    'kr@gmail.com',
    'as@gmail.com')
)
group_list[[3]][2]
group_list$email[2]
group_list[[2]][3]
group_list$place[3] # using name of the lists

names(group_list)

