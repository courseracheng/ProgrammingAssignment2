## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## initiate m as NULL
            m <- NULL

            ## function of set of x
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }

            ## function of get of x
            get <- function() x

            ## calculate inverse and save to cache
            setinverse <- function(solve) m <<- solve

            ## get the inverse value
            getinverse <- function() m

            ## return all functions
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

            ## get m from x
            m <- x$getinverse()

            ## check if inverse m is exist or not
            ## if inverse exist return m
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }

            ## get data of x
            data <- x$get()

            ## calculate the inverse
            m <- solve(data, ...)

            ## set the inverse m to x
            x$setinverse(m)

            ## return m
            m


}
