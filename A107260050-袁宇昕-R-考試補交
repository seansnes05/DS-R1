#2020/11/27(五), 109學年第一學期 資料科學應用 HW(4)
#學號: a107260050     姓名: 袁宇昕
library(readxl)
# 1(a)
x <- read.csv("Calculus-score-A.csv", header = TRUE, skip = 2)
y <- read_excel("Calculus-score-B.xls", skip = 2)
head(x, 5)
tail(x, 5)
head(y, 5)
tail(y, 5)


# 1(b)
x1 <- as.data.frame(x)
names(x1)[1:12] <- c("座號", "學號", "姓名", "性別", "quiz.1.", "quiz.2.", "quiz.3.", "quiz.4.", "TA", "MidtermExam", "FinalExam", "Attendance") #change variable name
names(y)[1:12] <- c("座號", "學號", "姓名", "性別", "quiz.1.", "quiz.2.", "quiz.3.", "quiz.4.", "TA", "MidtermExam", "FinalExam", "Attendance") #change variable name
x2 <- transform(x1,class = "A")
y1 <- transform(y,class = "B")
names(x2) == names(y1) 
score <- rbind(x2, y1) 
options("max.print" = 10000)
score

# 1(c)
score[is.na(score)] <- 0 
Q <- score[5]*0.07 + score[6]*0.07 + score[7]*0.08 + score[8]*0.08 + score[9]*0.15 + score[10]*0.25 + score[11]*0.30 + score[12]
Q1 <- c(Q[1:95,])
y <- ifelse(Q1 >= 100, 100, Q1)
y1 <- as.data.frame(y)
names(y1)[1] <- c("學期成績")
y1

# 1(d)
y2 <- ifelse(60 > y &　y >= 50, Q1, (sep="0"))
y3 <- as.data.frame(y2)
y4 <- which(y3 > 0) 
score[y4, ]

# 1(e)
Ascore <- which(score[,13] == "A")
Bscore <- which(score[,13] == "B")

sum(y1[Ascore,]) / length(Ascore)
sum(y1[Bscore,]) / length(Bscore)
A1 <- which(score[,4] == "女")
B1 <- which(score[,4] == "男")
sum(y1[A1,]) / length(A1)
sum(y1[B1,]) / length(B1)

# 1(f)
A2 <- ifelse(60 > y &　score[,13] == "A", x, (sep="0"))
A3 <- as.data.frame(A2)
A4 <- which(A3 > 0)
length(A4) / length(Ascore)
B2 <- ifelse(60 > y & score[,13] == "B" & score[,4] == "男", x, (sep="0"))
B3 <- as.data.frame(B2)
B4 <- which(B3 > 0)
length(B4) / length(Bscore)

# 1(g)
score1 <- transform(score,score = y1)
names(score1)[14] <- c("score")
SG <- score1[A1,]
SB <- score1[B1,]
SG1 <- order(SG$score, decreasing = TRUE)
SB1 <- order(SB$score, decreasing = TRUE)
SG2 <- SG[SG1,]
SB2 <- SB[SB1,]
head(SG2, 5)
head(SB2, 5)

# 2(a)
set.seed <- c(123456)
y <- c(sample(LETTERS[1:5], 20, replace=T))
x <-c()
for(i in 1:20){
  if(y[i] == "A")
    x[i] <- 1
  else if(y[i] == "E")
    x[i] <- 1
  else if(y[i] == "C")
    x[i] <- 2
  else
    x[i] <- 3
}
cat(x)

# 2(b)
LN <- data.frame(Letters.code = y, Numbers.code = x)
LN

