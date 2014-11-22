## These set of functions creates a special matrix object which can cache it's inverse

## Functions included are:
## makeCacheMatrix - for creating the special cache matrix object
## cacheSolve - for retreiving the matrix inverse (either from cache or calulating it if has not already calculated)


# makeCacheMatrix is a function that takes a matrix as an argument, and 
# creates a special matrix object which can cache it's inverse - a "cache matrix".
#
# The cache matrix has four different methods:
#
# set - for setting which matrix to store (and to base inverse calculations on)
# get - for retreiving the stored matrix
# setInverse - for setting the inverse to store
# getInverse - for retreiving the store inverse
makeCacheMatrix <- function(matrix) {
  
  # First store the matrix
  storedMatrix <- matrix
  
  # The inverse has not yet been calculated, thus set it to NULL
  storedInverse <- NULL
  
  # Method to set the Cache Matrix equal to another matrix
  set <- function(newMatrix) {
    
    # Stores the passed in matrix as the new Cache Matrix
    storedMatrix <<- newMatrix
    
    # The stored inverse does not apply to the new matrix, thus set it to NULL
    storedInverse <<- NULL
    
  }
  
  # Method to get stored matrix
  get <- function() storedMatrix
  
  # Method to set stored inverse to new inverse
  setInverse <- function(newInverse) storedInverse <<- newInverse
  
  # Method to get stored inverse
  getInverse <- function() storedInverse
  
  # List all metods available to the cache matrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


# cacheSolve is a function that takes a Cache Matrix and solve function parameters as arguments 
# and retreives the inverse of the matrix stored in the Cache Matrix either from cache or by calculating it. 
cacheSolve <- function(cacheMatrix, ...) {
  
  # Retrieve the current value of stored inverse
  storedInverse <- cacheMatrix$getInverse()
  
  # If the stored inverse value is not null
  if(!is.null(storedInverse)) {
    
    #Then output a message that the cached data will be used
    message("getting cached data")
    
    # Then return the value of the stored inverse of the cache matrix, and exit the function
    return(storedInverse)
  }
  
  # If the stored inverse doesn't have a value (i.e. it is NULL)
  # Then retrieve the matrix from the Cache Matrix
  storedMatrix <- cacheMatrix$get()
  
  # Calculate the inverse
  inverse <- solve(storedMatrix, ...)
  
  # Store the inverse in the Cache Matrix object
  cacheMatrix$setInverse(inverse)
  
  # Then output the inverse of the cache matrix
  inverse
  
}