## Functions use to cache the inverse of a matrix
## functions do

## makeCacheMatrix creates a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of a matrix
## 4. get the value of the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<-y
    i <<-NULL
  }
  get<- function()x
  setinverse <-function(inverse) i <<-inverse
  getinverse <-function()i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Function returns the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   i<-x$getinverse()
   if(!is.null(i)){
     message("getting cached data")
     return(i)
     
   }
   data <-x$get()
   i <-solve(data, ...)
   x$setinverse(i)
   i
}
