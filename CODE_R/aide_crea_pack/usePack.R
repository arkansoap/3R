library(devtools)
install_github("arkansoap/plotnetrec2")
library(testplotnetrec)


help(data1)
help("calcul_ind")
help("OlsDiag")
help("graph_cor")
help("covRect")
help("covRect_resample")
help("testlin")

calcul_ind(data1$X, data1$Y1, N=nrow(data1))
OlsDiag(data1$X, data1$Y1, N=nrow(data1))
covRect(data1)[[1]]
covRect_resample(data1, 100)[[1]]
graph_cor(data1$X, data1$Y1, N=nrow(data1))

# uniformiser notation x, y des datasets pr qu'ils soient ok avec toutes les fonctions
################# A jarter qd j'aurai refais les datasets du package
N = 400
x <- runif(N,0,100)
x <- sort(x)
u <- rnorm(N,0,20)
alpha=2
y<--50+10*x^alpha+u
mydata<-data.frame(cbind(x,y))
####################################################"

testlin(mydata)



