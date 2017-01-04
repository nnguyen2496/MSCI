#download MSCI Min Vol CSV to user's desktop
source_link <- "https://www.ishares.com/us/products/239695/ishares-
  msci-usa-minimum-volatility-etf/1467271812596.ajax?fileType=csv&fileName=USMV_holdings&dataType=fund"
url <- getwd()
path <- paste(url, "temp.csv", sep = "/")
download.file(source_link, destfile = path)


# Create dataframe from the csv
all_content = readLines(path)

#delete first 10 rows (not relevant)
skip_ten = all_content[-c(1:10)]
data = read.csv(textConnection(skip_ten), header = TRUE, stringsAsFactors = FALSE)

#view data
View(data)
