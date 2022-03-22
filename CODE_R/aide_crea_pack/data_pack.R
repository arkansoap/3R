# Note pour moi même : Recréer des datas pour cas non linéaire et heteroscédastique / moy var et faible var useless

N=500
X <- sort(rnorm(N, 40, 100)) 
Y <- 1- 2*X + rnorm(N, 0, 200) # forte variance
data_Norm_Str <- data.frame(X,Y)

Y <- 1+ 2*X + rnorm(N, 0, 80) #moyenne variance
data_Norm_Moy <- data.frame(X,Y) 

Y <- 1+ 2*X + rnorm(N, 0, 10) #faible variance
data_Norm_faible <- data.frame(X,Y)

save(data_Norm_faible, data_Norm_Moy, data_Norm_Str, file="data/database.Rdata")
