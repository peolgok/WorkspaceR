# 전영재 20200514/20200514



#문1

male <- c(10,40,60,20)
female <- c(21,60,70,30)
score <- cbind(male,female)
score

#문 2

#문 2-1
st <- data.frame(state.x77)

#문 2-2
st

#문 2-3
colnames(st)

#문 2-4
rownames(st)

#문 2-5
dim(st)

#문 2-6
str(st)

#문 2-7
rowSums(st)
rowMeans(st)

#문 2-8
colSums(st)
colMeans(st)

#문 2-9
st["Florida",]

#문 2-10
st[,"Income"]

#문 2-11
st["Texas","Area"]

#문 2-12
st["Ohio",c("Population","Income")]

#문 2-13
st["Population">5000]

#문 2-14
st["Income">4500,c("Population","Income","Area")]

#문 2-15
table(st["Income"]>4500)

#문 2-16
condi <- "Area">100000&"Frost">120
st[condi]

#문 2-17

condi <- "Population"<2000
st[condi]

condi <- "Population"<2000&"Murder"<12
st[condi]

#문 2-18
st["Illiteracy" > 2.0,"Income"]
a <- st["Illiteracy" > 2.0,"Income"]
mean(a)

#문 2-19. 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이 출력
b <- st["Illiteracy" < 2.0,"Income"]
mean(b)
mean(a)-mean(b)


#문 2-20. 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력
max(st[,"Life.Exp"])


#문 2-21 Pennsylvania 주보다 수입(Income)이 높은 주들 출력
st[,"Income">st["Pennsylvania","Income"]]

#문 3

#문 3-1. 이 데이터셋의 자료구조 출력
a <- mtcars
a

#문 3-2. 이 데이터셋의 행의 개수와 열의 개수 출력

dim(a)

#문 3-3. 이 데이터셋 열들의 자료형 출력
str(a)

#문 3-4. 연비(mpg)가 가장 좋은 자동차 모델 출력
max(a[,"mpg"])

#문 3-5. gear가 4인 자동차 모델 중 연비가 가장 낮은 모델 출력
#문 3-6. Honda Civic의 연비(mpg)와 gear 수 출력
#문 3-7. Pontiac Firebird 보다 연비가 좋은 자동차 모델 출력
#문 3-8. 자동차 모델들의 평균 연비 출력
#문 3-	9. gear의 수 종류 출력