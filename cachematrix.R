## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
This function creates the list of matrix and its matrix. It also includes functions
+## to set the same. 
 
+makeCacheMatrix <- function(x = matrix()) {
+        i <- NULL ## 'i' variable is to store the inverse of a matrix
+        set <- function(y = matrix()) {
+                x <<- y ##here the 'y' value is assigned to the global 'x'
+                i <<- NULL
+        }
+        get <- function() x
+        setSolve <- function(solve) i <<- solve               ## this is used to set value of inverse
+        getSolve <- function() i                     
+        list(set = set, get = get,
+             setSolve = setSolve,
+             getSolve = getSolve)  ## this returns the list 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
+        i <- x$getSolve()
+        if(!is.null(i))   ## this is to check whether there is cached value of inverse
+        {
+                message("getting cached data")
+                return(i)  ## Returning cached value of inverse
+        }
+        data <- x$get()
+        i <- solve(data, ...)   ## Calculating the inverse using solve function
+        x$setSolve(i)    ## Caching the value of inverse
+        i                ## Returing the inverse of the matrix
        ## Return a matrix that is the inverse of 'x'
}
