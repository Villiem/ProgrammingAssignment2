## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This is almost identical to the example
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inversa) i <<- inversa
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = geinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse() # we store the inverse
  if(!is.null(i)){ # if it exists we simply return
    message('getting cached data')
    return(i)
  }
  data <- x$get() ## otherwise we calculate it duuuh!
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
