## This functions below Calculate and Cache the Inverse of a Matrix 
## to reduce the cost of computation of inverse of a Matrix.

## the function below does computations to set a Matrix, get a Matrix
## to set the Inverse of a Matrix and to get the Inverse of a Matrix.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setMatrix <- function(y){
        x <<- y
        m <<- NULL
    }
    getMatrix <- function() x
    setInvMat <- function(matrix) m <<- matrix
    getInvMat <- function() m
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInvMat = setInvMat, getInvMat <- getInvMat)

}


## This function calculates and caches the Inverse of a Matrix
## if it isn't already calculated

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInvMat()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getMatrix()
    m <- solve(data)
    x$setInvMat(m)
    m   
}
