## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrx <- function(x = matrix()) {
        
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) iniv <<- inverse
  getInverse <- function() iniv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  iniv <- x$getInverse()
  if (!is.null(iniv)) {
    message("getting cached data")
    return(iniv)
  }
  mat <- x$get()
  iniv <- solve(mat, ...)
  x$setInverse(iniv)
  iniv
}
