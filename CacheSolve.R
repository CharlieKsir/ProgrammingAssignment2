cacheSolve <- function (x, ...) { #inverts a matrix after checking for
                                  # existing solution
  m <- x$getinv() #gets saved result
  if(!is.null(m)) {   #not null, so solution exists
    message ("getting cached data")  #just get the cached result
    return(m)                       #send the old result back
  }
  data <- x$get()     #is null, so must invert
  m <- solve(data, ...)  #do the inversion
  x$setinv(m)    #put new result in cache
  m              #print out new result
}