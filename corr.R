corr <- function(directory, threshold = 0) {
  files <- dir(directory)
  id <- length(files) 
  correlations <- c()

  for( i in 1:id) {
    file_ <- files[i]
    file_data <- read.csv(paste(directory,file_, sep = "/"), sep = ",");
    complete_cases <- file_data[complete.cases(file_data),]
    if (nrow(complete_cases) > threshold) {
      correlations <- c(correlations, cor(complete_cases$sulfate, complete_cases$nitrate))
    }
  }
  return(correlations)
}

corr("specdata", 150)
