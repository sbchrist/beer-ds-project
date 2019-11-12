library(MASS)

# read in the csv
data <- read.csv(file="BeerDataScienceProject.csv")

#logistic regression model
model <- polr(as.factor(review_overall)~review_palette+review_appearance+review_taste+review_aroma,data=data,Hess=TRUE)

#store table
(ctable <- coef(summary(model)))

## calculate and store p values
p <- pnorm(abs(ctable[, "t value"]), lower.tail = FALSE) * 2

## combined table
(ctable <- cbind(ctable, "p value" = p))

#odds ratios
exp(coef(model))
