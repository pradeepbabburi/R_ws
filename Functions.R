add <- function(x, y){
  x + y
}

above <- function(x, n = 10)  {
  valid <- x > n
  x[valid]
}

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}
