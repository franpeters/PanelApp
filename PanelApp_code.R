
#Load library for connecting to API's in R
library(httr)
#Load library for parsing JSON files in R
library(jsonlite)

#Link to the technical document for the panelapp API
#https://panelapp.genomicsengland.co.uk/api/docs/

#The base URL is the URL by which all queries to the API database are built off


base_url <- "https://panelapp.genomicsengland.co.uk/api/v1/"

#Combining the base_url with 'panels/' queries the API for all panels in the database
#The GET method from the httr package sends the 'GET' request to the API and the result is saved to the variable 'res'
res = GET(paste0(base_url,"panels/"))


data = fromJSON(rawToChar(res$content))
results <- data$results
head(results)

#

res_20 <-  GET("https://panelapp.genomicsengland.co.uk/api/v1/panels/20")
data_20 <- fromJSON(rawToChar(res_20$content))
data_20_genes <- data_477$genes
final_df <- data.frame(gene_symbol=data_20_genes$gene_data$gene_symbol,
                       confidence_level =data_20_genes$confidence_level)

head(final_df)
dim(final_df)


#Task
#Choose an available panel and extract the following information:
#1. Count the number of genes in the panel
#2. 

