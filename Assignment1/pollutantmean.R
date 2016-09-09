library(stringr)
pollutantmean <- function(directory, pollutant, id = 1:332)	{
	
	airdata <- list()
	for (i in id) {
		file <- paste(str_pad(i, 3, pad="0"), ".csv", sep="")
		airdata[[i]] <- read.csv(paste(directory, "/", file, sep=""))
	}
	airdata <- do.call(rbind, airdata)
	pollutantmean <- mean(airdata[[pollutant]], na.rm=T)
	return(pollutantmean)
}