library(stringr)

corr <- function(directory, threshold=0) {
  source("Assignment1/complete.R")
  ncomp <- data.frame(complete(directory))
  calcor <- ncomp[ncomp$nobs > threshold,][1]
  corr <- list()
  if (nrow(calcor) > 0) {
  for (i in 1:nrow(calcor)) {
    file <- paste(str_pad(calcor$id[i], 3, pad="0"), ".csv", sep="")
    airdata <- read.csv(paste(directory, "/", file, sep=""))
    corr[[i]] <- cor(airdata$sulfate, airdata$nitrate, use = "pairwise.complete.obs")
  }
  }
  corr <- as.vector(do.call(rbind, corr))
  return(summary(corr))
}