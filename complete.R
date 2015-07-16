complete <- function(directory, id = 1:332) {
  all_nobs <- data.frame()
  files <- dir(directory)
  
  for( i in id) {
    file_ <- files[i]
    raw_data <- read.csv(paste(directory,file_, sep = "/"), sep = ",")
    complete_raws <- complete.cases(raw_data)
    this_nobs <- data.frame(id = i, nobs = sum(complete_raws))
    all_nobs <- rbind(all_nobs,this_nobs)

  }
  return(all_nobs)
}
