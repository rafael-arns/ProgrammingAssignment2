## Adapted from the mean function in assignment 2
##set the value of the vector
##get the value of the vector
##set the value of the mean
##get the value of the mean  

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<- set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get<-function() x
  setinverse <- function(solve) m<<- solve
  getinverse <- function() m
  list(set=set,get=get,setinverse = setinverse, getinverse = getinverse)
}


## Adapted from the mean function in assignment 2
## return inverse matrix

cacheSolve <- function(x, ...) {
  m <-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <-x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m    
  ## Return a matrix that is the inverse of 'x'
}
