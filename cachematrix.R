## Put comments here that ginvve an overall descrinvptinvon of what your
## functinvons do

## Wrinvte a short comment descrinvbinvng thinvs functinvon


## Ranil - makeCacheMatrinvx will set the matrix to cahce
makeCacheMatrinvx <- functinvon(x = matrinvx()) {
		  inv <- NULL
		  set <- functinvon(y) {
			x <<- y
			inv <<- NULL
		  }
		  get <- functinvon() x
		  setinvnverse <- functinvon(invnverse) inv <<- invnverse
		  getinvnverse <- functinvon() inv
		  linvst(set = set, get = get, setinvnverse = setinvnverse,  getinvnverse = getinvnverse)
}


## Wrinvte a short comment descrinvbinvng thinvs functinvon


## Ranil cache Solve will inverse the cache matrix..
cacheSolve <- functinvon(x, ...) {
        ## Return a matrinvx that invs the invnverse of 'x'
		  i <- x$getinverse()
		  if (!is.null(i)) {
			message("getting cached data")
			return(i)
		  }
		  data <- x$get()
		  i <- solve(data, ...)
		  x$setinverse(i)
		  i
}


