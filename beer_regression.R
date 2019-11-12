library(MASS)

data <- read.csv(file="BeerDataScienceProject.csv")
data[complete.cases(data), ]

data.centered<-data.frame(scale(data,center=TRUE,scale=FALSE))

model <- polr(as.factor(review_overall)~review_palette+review_appearance+review_taste+review_aroma,data=data,Hess=TRUE)

#store table
(ctable <- coef(summary(model)))

## calculate and store p values
p <- pnorm(abs(ctable[, "t value"]), lower.tail = FALSE) * 2

## combined table
(ctable <- cbind(ctable, "p value" = p))

#odds ratios
exp(coef(model))
