library(stringr)
complete <- function(directory, id = 1:332) {
  
  out <- list()
    for (i in id) {
      file <- paste(str_pad(i, 3, pad="0"), ".csv", sep="")
      airdata <- read.csv(paste(directory, "/", file, sep=""))
      nobs <- nrow(airdata[!is.na(airdata$sulfate)&!is.na(airdata$nitrate),])
      out[[i]] <- c(i, nobs)
    }
    out <- do.call(rbind, out)
    colnames(out) <- c("id", "nobs")
    return(out)
}