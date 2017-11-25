#Load Train and Test datasets
#Identify feature and response variable(s) and values must be numeric and numpy arrays
x_train <- c(43,54,43,54,43,54,43,54,234,54,354,765,42)
y_train <- c(43,74,43,54,47,54,43,34,234,54,554,765,42)
x_test <- data.frame(c(43))
x <- data.frame(x_train,y_train)
# Train the model using the training sets and check score
linear <- lm(y_train ~ ., data = x)
summary(linear)
#Predict Output
predicted= predict(linear,x_test)