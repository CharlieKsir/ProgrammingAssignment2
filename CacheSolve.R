cacheSolve <- function (x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    messagee ("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}