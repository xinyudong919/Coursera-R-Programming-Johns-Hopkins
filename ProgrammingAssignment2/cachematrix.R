## A pair of functions that cache the inverse of a matrix

## creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- Null
    set <- function(y){
        x <<- matrix
        i <<- Null
    }
    get <- function() x
    setInverse <- function(inverse) i<<-inverse
    getInverse <- functon() i
    list(set = set, get = get,
         setInverse = setInverse, 
         getInverse = gerInverse)
}


## computes the inverse of the special "matrix" returned by makeCacheMatrix
## If the inverse has already been calculated (and the matrix has not changed) 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    # get inverse of matrix x from cache
    i <- x$getInverse()
    # if there is a inverse matrix
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    # get the matrix from our object
    data <- x$get()
    # get inverse of data
    i <- solve(data) %*% data
    # set inverse to x
    x$setmean(i)
    # return the inverse
    i
}
