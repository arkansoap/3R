library(devtools)
install_github("arkansoap/plotnetrec2")
library(testplotnetrec)


help(data1)
help("calcul_ind")
help("OlsDiag")
help("graph_cor")
help("covRect")
help("covRect_resample")

calcul_ind(data1$X, data1$Y1, N=nrow(data1))
OlsDiag(data1$X, data1$Y1, N=nrow(data1))
covRect(data1)[[1]]
covRect_resample(data1, 100)[[1]]
graph_cor(data1$X, data1$Y1, N=nrow(data1))



