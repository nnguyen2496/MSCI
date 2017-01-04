#download MSCI USA CSV to user's desktop
source_link <- "https://www.ishares.com/us/products/239693/ishares-msci-usa-etf/1467271812596.ajax?fileType=csv&fileName=EUSA_holdings&dataType=fund"
url <- getwd()
path <- paste(url, "temp2.csv", sep = "/")
download.file(source_link, destfile = path)

# Create dataframe from the csv
all_content = readLines(path)

#delete first 10 rows (not relevant)
skip_ten = all_content[-c(1:10)]
data2 = read.csv(textConnection(skip_ten), header = TRUE, stringsAsFactors = FALSE)

#view data
View(data2)
