#1#
v1 <- vector ("double", 5)
v1[1] <- 22
v1[length(v1)] <- 6.5
dif <- ((v1[length(v1)] - v1[1]) / (length(v1) - 1) )
for (i in 2 : (length(v1) - 1) ){
  v1[i] <- v1[i - 1] + dif
}

v2 <- vector ("double", 3)
v2[1] <- abs(13 - 22) + 2
v2[length(v2)] <- 100
gq <- (v2[length(v2)] / v2[1])^(1 /(length(v2) - 1))
for( i in 2 :(length(v2) - 1) ){
  v2[i] <- v2[i - 1]*gq
}
print("first vector")
v1
print("second vector")
v2

if ((v1[1] + v2[1]) %% 2 == 0 ){
  m <- matrix(c(v1, v2), nrow = 2, byrow = T)
} else { m <- matrix(c(v2, v1), nrow = 2, byrow = T)}
print("matrix")
m

#2#
names <- c("Kate", "Ann", "Steve")
grade <- c(8.8, 7.0, 6.7)
df <- data.frame(names, grade)

df <- cbind(df, logic = c(T,T,F))

df <- cbind(df, factor = f)

print("lines with logic factor == T")
subset(df, logic == TRUE)


#3#
iris <- read.csv(file = "iris.csv", header = TRUE)

#a#
print("Sepal.width <= 3")
print(nrow(subset(iris, Sepal.Width <= 3 & Species == "setosa")))
print(nrow(subset(iris, Sepal.Width <= 3 & Species == "versicolor")))
print(nrow(subset(iris, Sepal.Width <= 3 & Species == "virginica")))

#b#
print("Petal.Length >4.5")
print(nrow(subset(iris, Petal.Length > 4.5 & Species == "setosa")))
print(nrow(subset(iris, Petal.Length > 4.5 & Species == "versicolor")))
print(nrow(subset(iris, Petal.Length > 4.5 & Species == "virginica")))

#c#
print("Sepal.width <= 3 && Petal.Length >4.5")
print(nrow(subset(iris, Petal.Length > 4.5 & Sepal.Width <= 3 & Species == "setosa")))
print(nrow(subset(iris, Petal.Length > 4.5 & Sepal.Width <= 3 & Species == "versicolor")))
print(nrow(subset(iris, Petal.Length > 4.5 & Sepal.Width <= 3 & Species == "virginica")))

#d#
print("Mean by Petal.Width")
print(mean(subset(iris, Species == "setosa")$Petal.Width))
print(mean(subset(iris, Species == "versicolor")$Petal.Width))
print(mean(subset(iris, Species == "virginica")$Petal.Width))

