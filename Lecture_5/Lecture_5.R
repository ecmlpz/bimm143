# Class 05 R graphics intro 

# My first boxplot
x <- rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)

boxplot(x, horizontal = TRUE)

# Hands on session 2 

weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
plot(weight)
plot(weight, pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age(months)", ylab= "Weight (kg)", main="Some title")
plot(weight$Age,weight$Weight, type = "o", pch=15, cex=1.5, lwd=2, ylim = c(2,10), xlab= "Age (months)", ylab="Weight (kg)", main = "Baby weight with age")
plot(weight$Age,weight$Weight, pch=15, cex=1.5, lwd=2, ylim = c(2,10), xlab= "Age (months)", ylab="Weight (kg)", main = "Baby weight with age")

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", sep= "\t", header = TRUE)
barplot(mouse$Count)

barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, main = "Number of features in the mouse GRCm38 genome", las=1 )

# Change margin so we can see the labels 
par(mar=c(5.1, 11.1, 4.1, 2.1))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, las =2)

mf <- read.table("bimm143_05_rstats/male_female_counts.txt", sep = "\t", header = TRUE)
barplot(mf$Count, names.arg = mf$Sample, col = rainbow(nrow(mf)), las =2, ylab = "Counts")

barplot(mf$Count, names.arg = mf$Sample, col = c("blue2", "red2"), las =2, ylab = "Counts")

# up down expression
gene <- read.delim("bimm143_05_rstats/up_down_expression.txt")

# how many genes
nrow(gene)

# how many up, down and all around?
table (gene$State)

plot(gene$Condition1, gene$Condition2, col=gene$State)

# Play

