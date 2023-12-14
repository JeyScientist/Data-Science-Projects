df <- read.csv("car.csv")
str(df)
df <- subset(df, select = -User.ID)
df <- subset(df, select = -Gender)
df <- na.omit(df)
summary(df)
df_set_size <- floor(nrow(df)*0.75)
index <- sample(1: nrow(df), size = df_set_size)
train <- df[index,]
test <- df[-index,]
df$Purchased <- as.factor(df$Purchased)
rf <- randomForest(Purchased~., data = train, ntree = 301, ntry =4, importance = True)
rf
plot(rf)

sv <- svm(Purchased~., data = train)
plot(sv)
sv
pred <- predict(rf, newdata = test)

