## These two functions that can compute the inverse of a matrix and cache the inverse

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	## initial inverseMatrix 
	inverseMatrix <- NULL
	
	## This function that can set the value of x
	set <- function(y) {
		x <<- y
		inverseMatrix <<- NULL
	}
	## This function that can get x
	get <- function() x
	
	## This function that can set the value of inverseMatrix
	setInverse <- function(inverse) inverseMatrix <<- inverse
	
	## This function that can get the inverseMatrix
	getInverse <- function() inversematrix
	
	## Return a list contains functions defined in makeCacheMarix
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function computes the inverse of the special "matrix" returned
## by makeCacheMatrix above

cacheSolve <- function(x, ...) {
	## get the cached inverse matrix
	inverseMatrix <- x$getInverse()
	
	## Judge whether the value of inverMatrix is null
	if(!is.null(inverseMatrix)) {
		## if not null, return inverMatrix
		message("getting cached matrix")
		return(inverseMatrix)
	}
	
	## if null, computes the matrix and caches its inverse
	matrix <- x$get()
	
	## computes the matrix
	inverseMatrix <- slove(matrix, ...)
	
	## caches the matrix's inverse
	x$setInverse(inverseMatrix)s
	
	## return matrix's inverse
	inverseMatrix
}
