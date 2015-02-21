makeCacheMatrix <- function (x=numeric()) { 
              #makes a vector of functions to be called using "get"
  m <- NULL   # initializes result to null
  set <- function (y) {
            #gets the matrix            
    x <<- y  #sends the matrix outside this function to x
    m<<- NULL #resets result to null
  }
  get <- function () x   #this will call the appropriate function
  setinv <- function(solve) m <<- solve   #stores inverse in solution
  getinv <-function() m  #sends back the inverse
  list(set = set, get = get, 
       setinv = setinv, 
       getinv = getinv)    
}