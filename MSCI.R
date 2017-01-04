#download CSV to user's desktop



# Create dataframe from the csv
all_content = readLines("C:\\Users\\Nam Nguyen\\Desktop\\1.csv")

#delete first 10 rows (not relevant)
skip_ten = all_content[-c(1:10)]
data = read.csv(textConnection(skip_ten), header = TRUE, stringsAsFactors = FALSE)

#view data
View(data)
