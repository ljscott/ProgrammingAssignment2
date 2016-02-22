## Put comments here that give an overall description of what your
## functions do
##There are two functions patterned after makeVector and cachemean samples.
##MakeCacheMatrix, the first function, has lines to create a list with set and get statements.
##CacheSolve, the second function, has lines that obtain the matrix inverse either from cache or directly from the function.


## Write a short comment describing this function
## This section makes a function that can cache the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
    get <- function() x
    setInv <- function(solve) m <<- solve
    getInv <- function() m
    list(set = set, get = get,
        setInv = setInv,
        getInv = getInv)
}

## Write a short comment describing this function
## This section has a function that returns the matrix inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  a$setInv(m)
  m
}

## The following lines can help test the functions.
   a<- makeCacheMatrix()
   a$set(NULL)
   a$setInv(inv)
   a$get()
   inv <- cacheSolve(a)
