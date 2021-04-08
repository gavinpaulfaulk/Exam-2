#extract year from date
e <- read.csv(file = "Alaska_Bald_Eagle_Nest_Sites_(USFWS).csv", header = T, stringsAsFactors = F)

library("stringr")

year <- str_sub(string = e$modayyr, start = 1, end = 4)
str(year)
head(year)

year <- as.numeric(year)
e$"Year" <- year
write.csv(x=e, file = "Eagle_Nest_year.csv")

str(e)

