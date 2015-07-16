pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- dir(directory)
  result_data <- c()
  for( i in id) {
    file_ <- files[i]
    raw_data <- read.csv(paste(directory,file_, sep = "/"), sep = ",")
    polution_data <- raw_data[,pollutant]
    clean_data <- polution_data[!is.na(polution_data)]
    result_data <- c(result_data,clean_data)
    result <- round(mean(result_data),3)
  }
  return(result)
}
 print(pollutantmean("specdata","nitrate", 1:10))
 
  
 
 