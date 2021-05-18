#######################################################################################
# PCA: Visualize the eignenvectors of the correlation matrix for 
# two inputs

# Reference: https://www.cs.princeton.edu/picasso/mats/PCA-Tutorial-Intuition_jp.pdf
#######################################################################################

x <- rnorm(100)
y <- x + rnorm(100, sd = .5)

plot(x,y)

K <- cor(cbind(x,y))

e <- eigen(K)
plot(x,y)
k <- 5

lines(c(0,k*e$vectors[1,1]), c(0, k*e$vectors[2,1]), type = 'l', col = 'red')
lines(c(0,k*e$vectors[1,2]), c(0, k*e$vectors[2,2]), type = 'l', col = 'blue')


# Check that Av = \lambda*v, where 
# A = k, v is an eigenvector (column of e$vector),
# and \lambda is an eigenvalue

# first eigenvector
K %*% e$vectors[,1] 
e$values[1]*e$vectors[,1]

# second eigenvector
K %*% e$vectors[,2] 
e$values[2]*e$vectors[,2]

