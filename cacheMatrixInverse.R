cacheMatrixInverse <- function(x, ...) {
  m.inv <- x$getInverse()
  if(!is.null(m.inv)) {
    message("getting cached data for the matrix inverse")
    return(m.inv)
  }
  mat <- x$get()
  m.inv <- solve(mat, ...)
  x$setInverse(m.inv)
  m.inv
}