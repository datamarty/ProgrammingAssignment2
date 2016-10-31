# Coursera R Course Peer graded Assignment 2
# Martin Selway, Oct 2016
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## Re-use the template provided for cacheMean
  m <- x$getinverse() # re-name getmean as getinverse
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...) # change mean function to solve
  x$setinverse(m) # change setmean to setinverse
  m
}