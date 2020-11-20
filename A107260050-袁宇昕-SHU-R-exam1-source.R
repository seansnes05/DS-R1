2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)

學號:A107260050        姓名:袁宇昕
    
    # (請依照規定)貼上執行程式碼及執行結果。
    詳見: R程式作業繳交方式
http://www.hmwu.idv.tw/web/teaching/doc/R-how-homework.pdf

# ex1(a)
x <- read.csv("Calculus-score-A.csv", skip = 2)
x
y <- read_excel("Calculus-score-B.xls", skip = 2)
y
head(x, 5)
head(y, 5)
names(x)

# ex1(b)
names(x) <- c("No","ID", "Name", "Gender", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "TA", "Midterm Final" 
             , "ATT")
names(y) <- c("No","ID", "Name", "Gender", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "TA", "Midterm Final" 
              , "ATT")
rbind(c("No","ID", "Name", "Gender", "Quiz1" "Quiz2", "Quiz3", "Quiz4", "TA", "Midterm Final" 
        , "ATT"), c(x, y))
z <- C(x,y)
data.frame(x ,y)

#ex1(c)
score <- x$"Quiz1"*0.07 + x$"Quiz2"*0.07 + x$"Quiz3"*0.08 + x$"Quiz4"*0.08+x$"TA*0.15+

set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)

x <- Letters.code

length(Letters.code)
for(i in 1:20){
    if(x[i] == a)
        cat(1)
}
