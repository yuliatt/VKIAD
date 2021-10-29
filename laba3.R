#1
infofile <- read.csv(file = "avianHabitat.csv" , header = TRUE) 

info <- infofile$WHt
info <- info[info != 0]

infososed <- infofile$EHt
infososed <- infososed[infososed != 0]

#2
max(info)
min(info)
mean(info)
median(info)

uniq <- unique(info)
uniq[which.max(tabulate(match(info, uniq)))]

var(info)
sqrt(var(info))

quantile(info,(0.25))
quantile(info,(0.75))

#4
boxplot(info,infososed)

#5
plot.ecdf(info)

#6
hist(info,  col="#7AD1D2", border="gray", prob = TRUE, main = "WHt")
lines(density(info), lwd = 3, col = "#0D5C5C")

#7
qqnorm((info-mean(info))/sd(info))
lines(c(-5,5), c(-5,5), lwd = 3, col = "#0D5C5C")

