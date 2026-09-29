f <- function(x = 10**8) {
  cur <- 0
  for (i in seq(1, x, 1)) {
    cur <- sum(cur,i**2)
  }
  return(cur)
}

m <- matrix(c(6,34,923,5,0,112,113,114,115,116,5,9,34,76,2,545,546,547,548,549), nrow = 5, ncol = 4)
list <- as.list(mtcars)