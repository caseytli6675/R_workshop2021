# first time practice

rnorm(3, sd = 2)
hist(rnorm(1000))

# get help
?rnorm
args(rnorm)

# calculater

3^3
2*5
exp(4)
log(20)

# matrix
mat1 <- matrix(1:4, nrow=2, byrow=TRUE)
mat2 <- matrix(5:8, nrow=2, byrow=TRUE)
mat1*mat2

c_mtx <- mat1%*%mat2

x <- diag(c_mtx)

rowSums(c_mtx)
colSums(c_mtx)
