# Coursera R Course Peer graded Assignment 2
# Martin Selway, Oct 2016
makeCacheMatrix <- function(x = matrix()) {
  # generate the cache of the matrix
  # re-use the template for makeVector
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve # change setmean to setinverse mean to solve
  getinverse <- function() m # change getmean to getinverse
  list(set = set, get = get,
       setinverse = setinverse, # mean becomes inverse
       getinverse = getinverse) # mean becomes inverse
}