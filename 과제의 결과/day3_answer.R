#
# day3_answer.R
#
# 3일차 Matrix/Data Frame 실습
#
#문1) 
#>score
#m  f
#[1,] 10 21
#[2,] 40 60
#[3,] 60 70
#[4,] 20 30

#1. 위와 같은 내용의 matrix score를 생성
m <- c(10,40,60,20)
f <- c(21,60,70,30)

score <- matrix(c(m,f), nrow = 4)
score

# 매트릭스, 데이타프레임의 차이 / 데이타 프레임은 동일한 형태 아니어도.

score <- data.frame(m,f)
score

#2. score의 열 이름을 각각 male, female로 바꾸시오
colnames(score) <- c('male','female')
score

#3. 2행에 있는 모든 값을 출력 # 2,행/ #,2 열
score[ 2, ]

#4. female의 모든 값을 출력
score[ , 'female']

# =

score[, 2]

#5. 3행 2열의 값을 출력
score[ 3, 2 ] # cell을 이야기하는 것입니다

#문2)
#R에서 제공하는 state.x77 데이터셋/ date() /을 이용하여 작성

#1. state.x77을 변환하여 st에 data frame으로 작성
st <- data.frame(state.x77)


#2. st의 내용을 출력
st
 
#3. st의 열 이름 출력   // 변수들의 이름을 말하는 것 colnames = names
colnames( st )
names( st )

#4. st의 행 이름 출력 // 행은 관측치 데이터, 열은 변수
rownames( st )

#5. st의 행의 개수와 열의 개수 출력 // n은 number를 뜻하는 듯하다.
nrow( st )
ncol( st )
dim( st )

#6. st의 요약 정보 출력 // 내용을 볼때 쓰는 함수(요약정보라고 할 수) 
# 벡터, 매트릭스, 데이터 프레임에 따라서 달라지는 것 인지.
# 달러 다음에 나오는 것 관측치 이름, 타입, 그리고 셀들
str( st )

# class, str, dim <- (형식을 알아보자), (그 안에 저장을 어떻게 했는지 내용을 볼 수 있는), dim은 평균

#7. st의 행별 합계와 평균 출력 // 지원되지 않는 함수일 때 apply를 써라. 
# apply 지정했을때 <이름, 1이면 행 2면 열, 구하고자하는 것(함수 우리가 만들 수도)>
rowSums( st ) # =
apply( st, 1, sum )
rowMeans( st ) # =
apply( st, 1, mean )

#8. st의 열별 합계와 평균 출력
colSums( st )
apply( st, 2, sum )
colMeans( st )
apply( st, 2, mean )

#9. Florida 주의 모든 정보 출력 # 플로리다는 행에 있어서 뒤에, 
st[ 'Florida', ]

#10. 50개 주의 수입(Income) 정보만 출력 # 인컴은 열에 있어서 앞에, 
st[ , 'Income' ]

#11. Texas 주의 면적(Area)을 출력
st[ 'Texas', 'Area' ]

#12. Ohio 주의 인구(Population)와 수입(Income) 출력 # 벡터 안쓰면 따로 따로 해야한다. c( 'Population', 'Income' ) 백터
st[ 'Ohio', c( 'Population', 'Income' ) ]

#13. 인구가 5,000 이상인 주의 데이터만 출력 # 인구는 변수, #subset 부분적으로 가져오는 것.
subset( st, Population >= 5000 )

#14. 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력
subset( st, Income >= 4500, select = c( 'Income','Area' ) ) # 방법1
subset( st, Income >= 4500 )[ , c( 'Income', 'Area' ) ] # 방법2

#15. 수입이 4,500 이상인 주는 몇 개인지 출력 # 데이터 프레임은 lenth 쓰기 어려워, nrow를 그리하여 써.
nrow( subset( st, Income >= 4500 ) )

#16. 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보 출력
subset( st, Area>=100000 & Frost > 120 )

#17. 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12미만인 주의 정보 출력
subset( st, Population < 2000 & Murder < 12 )

#18. 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인지 출력
#방법 1
tmp <- subset( st, Illiteracy >= 2.0 )
tmp <- tmp$Income
mean( tmp )

# 방법 2 썹 셋하고 인컴하고 민하고 즉 3번 함수(?)된 거
mean( subset( st, Illiteracy >= 2.0 )$ Income )

# 풀어서 하다보면 실력이 늘게 되어 있습니다.
# 



#19. 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이 출력
# 방법 1
tmp1 <- subset( st, Illiteracy < 2.0 )
tmp1 <- tmp1$Income
tmp2 <- subset( st, Illiteracy >= 2.0 )
tmp2 <- tmp2$Income
abs( mean( tmp1 ) - mean( tmp2 ) )

# 방법 2
abs( mean( subset( st, Illiteracy < 2.0 )$Income ) - mean( subset( st, Illiteracy >= 2.0 )$Income ) )

#20. 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력
max.life <- max( st$Life.Exp )
rownames( subset( st, Life.Exp == max.life ) )

#21 Pennsylvania 주보다 수입(Income)이 높은 주들 출력
pen.income <- st[ 'Pennsylvania','Income' ]
rownames( subset( st, Income > pen.income ) )

#문3)
#R에서 제공하는 mtcars 데이터셋은 자동차 모델에 대한 제원 정보를 담고 있다.
#데이터셋의 것들을 헬프에 물어볼 수도.

#1. 이 데이터셋의 자료구조 출력
class( mtcars )

#2. 이 데이터셋의 행의 개수와 열의 개수 출력
dim( mtcars )

#3. 이 데이터셋 열들의 자료형 출력
str( mtcars )

#4. 연비(mpg)가 가장 좋은 자동차 모델 출력
max.mpg <- max( mtcars$mpg )
rownames( mtcars[ mtcars$mpg == max.mpg, ] ) # 방법 1
rownames( subset( mtcars, mpg == max.mpg ) ) # 방법 2

#5. gear가 4인 자동차 모델 중 연비가 가장 낮은 모델 출력
min.mpg <- min( mtcars[ mtcars$gear == 4, 'mpg' ] )
rownames( mtcars[ mtcars$mpg == min.mpg, ] ) # 방법 1
rownames( subset( mtcars, mpg == min.mpg ) ) # 방법 2

#6. Honda Civic의 연비(mpg)와 gear 수 출력
mtcars[ 'Honda Civic','mpg' ]

#7. Pontiac Firebird 보다 연비가 좋은 자동차 모델 출력
pon.mpg <- mtcars[ 'Pontiac Firebird','mpg' ]
rownames( mtcars[ mtcars$mpg > pon.mpg, ] ) # 방법 1
rownames( subset( mtcars, mpg > pon.mpg ) ) # 방법 2

#8. 자동차 모델들의 평균 연비 출력
mean( mtcars$mpg )

#9. gear의 수 종류 출력 //table 함수 쓰면 숫자 알수 있어
unique(mtcars$gear)

table(mtcars$gear)

data()


############################## 이모든 게 탐색적 데이터 분석이이다.

