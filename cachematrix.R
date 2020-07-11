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
       getinverse = getinverse)
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

## Test
x <- matrix(rexp(100, rate=.1), ncol=10)
x
# solve(x) to make sure it exists

x_cache <- makeCacheMatrix(x)
cacheSolve(x_cache) ## inverse
cacheSolve(x_cache) ## same but now with the message
