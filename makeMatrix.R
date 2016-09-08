makeMatrix <- function(x = matrix()) {
  # initialize the inverse of a matrix
  m.inv <- NULL
  set <- function(y) {
    # re-set the matrix to the new matrix
    x <<- y
    # re-set the inverse of matrix to NULL
    m.inv <- NULL
  }
  get <- function() x
  setInverse <- function(inv) m.inv <<- inv
  getInverse <- function() m.inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}