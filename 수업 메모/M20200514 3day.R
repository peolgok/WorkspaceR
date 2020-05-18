#
# 3일차
#
# 0. OPEN
# 1. Review
# 2. Topic
#   2.1 List (숫자 문자 이런 거 합쳐서 복합적으로 할 수 있는)
#   2.2 factor (범주형, 카테고리형) ex) 혈액형 정해져있는 항목 정리하는.
#   2.3 matrix 
#   2.4 data frame (실제로 가장 많이 쓰게 되는)
#   2.5 파일 읽기/쓰기
# 3. Q & A
# 4. Next
# 5. Close
#
#
# 德 有隣 必
#
# r을 공부하는 것은 함수에 익어지는 것.
# 함수는 제공되어 있는 것, 이것을 어떻게 이용할 것인지에 관하여.
#

#
# &와 &&와, |와 ||의 차이
#

vt <- c( TRUE, FALSE)
vt2 <-  c( TRUE, FALSE)

vt & vt2             # 벡터별 요소 각각에 대하여 AND 연산 수행
vt && vt2            # 벡터 첫번째 요소에 대하여 AND 연산 수행



#
# ()와 []의 차이
#
# () : 1. 연산식에서 우선순위 변경 목적 2. 함수에서 인수전달
#
# 모든 인수엔 반드시 괄호가가 있어야
#
# [] : 벡터, 리스트, 매트릭스, 데이터프레임에서 요소를 지정하는 목적




#
# git cmd를 다루다 10:25
#
#
# 명령을 내릴 때는 나의 상태를 반드시 봐야함.
# dir :목록
# cd : directory 이동
# cd \ : root
# \ dms rnqnswk
# \은 루트임돠.
# 내가 하고 싶은 내용, 나의 현재 상태를 잘 파악해야.
# .은 숨겨진 파일이다. 히든파일이다. 히든파일은 관리할 수 없다?!
# git status를 하면 git을 넣어서 관리할 수 있는 것 보여
# cmd 대문자 소문자 차이 없어
# (Git add) *.R 하면 R파일 전부 관리할 수.
# git status에서 확인될 목록들 봐야.
# git init, git status, git add, git commit -m " "
# 
# 
# 

#
# vector
#

v <- 1:10

v > 5
all(v>5)        # 벡터의 모든 요소가 조건에 충족하는가?
any(v>5)        # 벡터의 요소중 조건에 만족하는 게 있는가? # all, any는 하나의 질문.


head(v)         # 처음부터 일정수 개수 ( default : 6개)
tail(v)         # 끝에서부터 일정 개수 ( default : 6개)
head( v,3)      # 이것은 내가 보려는 개수를 지정한 것.
tail(v,3)


# 
# 집합(SET) : 중복 데이터가 없는 벡터
# 

x <- c(1, 2, 3)
y <- c(3, 4, 5)
z <- c(3, 1, 2)

union(x,y)                  # 합집합
intersect(x,y)              # 교집합
setdiff(x,y)                # 차집합
setequal(x,y)               # 동일한 요소가 있는가 확인

# 벡터와 집합의 차이 
# 집합의 특성, R, 파이썬에서의 집합은 
# 중복데이터가 허용되지 않는다.

#
# 2.1 List
#
# list : 동일 자료형, 다른 자료형을 저장할 수 잇는 벡터
# 
# 
v <- c(90, 85, 70, 84)
l <- list(name = 'hong', age = 30, stats = TRUE, score=v )

# name 문자 age 숫자 stats 논리 score 벡터 이런 거 짬뽕하면 리스트인듯
# 벡터에도 네임즈해서 이름 쓸 수. 값에 대한 이름 name = 'hong' 이게 key이름 값
# =value 리스트(l)라는 게 리스트 생성 함수 l는 얘도 인덱스 쓸 수 있어
# 앞에 $ 나와. 요소는 list생성함수는 key(이름) = value(값) 형식이다. 따로 네임즈 안써도
#
# &age
# [1] 30    :    에서 [1]은 인덱스, 30은 값 age는 ?
#
# 벡터 안의 벡터 여기선 score
#
#

l[1]                       # 1-1 이것이 리스트 사용시 주의점, 하나만 쓰면 값과 이름을 가져와
l[4]
l [[1]]                    # 1-2 이것이 리스트 사용시 주의점, 값만 쓰고 싶을 땐 대괄호 2개 써야.
l[[4]][1]

l[[4]]
l[[4]][1]


#
#
# 걍 논리적으로 이해하시오.


l$name
l$score

# $는 이름으로 접근할 때, 그냥 요런 것도 있다한다.


#
# 2.2 factor (범주형, categorical)
#
# 
#
# factor 형 : 문자 형태로 저장되며 범위를 갖는 값을 저장
#
#

bt <- c('A', 'B', 'B', 'O', 'AB', 'A' )         # 문자형 벡터
bt.factor <- factor(bt)                         # 팩터형 벡터

bt
bt.factor

bt[3]
bt.factor[3]

gender <- c('남','여','여','남','남','여','여','남')
gender.factor <- factor( gender)

gender
gender.factor


# level는 종류
# 값이 일정하면 다 팩터로 잡는다. 종류로 따진다는 것.
#
# 그 level 타입을 넣어버리면 에러가 날 수 있어



gender <- c('남','여', '여','남','남','여','여','남')
gender.factor <- factor( gender)

gender
gender.factor


bt[3]
bt.factor


bt[3]
bt.factor[3]

gender [5]
gender.factor[5]

levels(bt.factor)
levels(gender.factor)

as.integer(bt.factor)
as.integer(gender.factor)


# 예시들

gender.factor [5]
gender.factor[5] <- '중'
gender.factor

#
# 경고와 에러의 차이 
# warning : 상황에 따라 에러 날 수 있다는 것, 이것이 팩터형의 장점
# error 
# 책 page60 이야기. 범주형 데이터 이얘기. 범주형이 뭔지 팩터가 뭔지 이해해야.
#



#
# 2.3 matrix
#
# matrix(행렬, 2차원 배열 ) : 동일 자료형의 데이터를 저장하는 벡터집합
#
# row(행), observation(관측값), data
# column(열), variable(변수)
#

# 빅데이터에서는 매트릭스를. 관측치, 관측각 머신러닝 딥러닝에서 이걸 값이라 함.
# 같은 내용인데 용어가 다른 경우가 왕왕있어.
# 행과 열 세로 열, 가로 행 열(column), 데이타분석에서는 "변수"가 중요하다.
# 
# EDA단계에서 열 Column을 해석하게 된다.
# 관측치(observation) , 값(data) 이런 의미들 잘 구분해야한다.
# 행과 열이 만나는 구간 말하게 될 때, x행 x열 ex) 2행 3열, 이러한 것을 하나의 셀(cell)이라함. 
# 용어들의 정확한 의미 알아야. 행- 관측치 값, 열은 변수 
# 
# 백터와 x의 차이 x는 동일 자료일 필요가 없다.
# x= L,l list

#
# matrix() : matrix 생성함수
# nrow = 4 가 인수인 것

z <- matrix(1:20, nrow =4)
z
class(z)
str(z)
dim(z)

#
# 열우선, 매트릭스 함수 쓸 때 열을 먼저 채운다.
# 이것이 default. 걍 기본동작.
# array 배열, class, 타입확인
# str 기억장소 확인
# dim 차원. 몇행 몇열인지 가르쳐줘. 매트릭스에서는 dim을 쓰도록 한다다
#
# 지금 다루고 있는 변수는 다른 것이다. 즉 매트릭스에서의 변수. 콜론, 열
# 행은 관측치, 값 observation 또는 data인 것이다.

z <- matrix(1:20, nrow = 4, ncol =5, byrow= T)        #byrow 그러니까 row 행에서 우측으로 주욱 , 순으로 쓴다는 것
z
z <- matrix(1:20, nrow =4, ncol =5)
z


x <- 1:4
y <- 1:5
x
y
m1 <- cbind(x, y)
m1
m2 <- rbind(x, y)
m2


# 백터에서 매트릭스 만드는 또하나의 방법

# c = column, r = row
# rbind는 x,y를 row 즉 행으로 본 거고
# cbind는 x,y를 column 즉 열 본 거고


m3 <- rbind(m2, x)
m3
m4 <- cbind(m2, x)
m4



#
# matrix에서 cell의 값 읽기
#

z[2,3]
z[1,4]
z[2,]
z[,4]

z[2, 1:3]
z[1, c(1, 2, 4)]
z[ 1:2,]
z[,c(1, 4)]

#
# 인덱스 여러 개 줄 수 있다 그럴 떄 백터를 활용한다
# 

#
# 1차원의 백터 2차원 매트릭스 인 것입니다.
#

#
# matrix 행/열에 이름 지정
#

score <- matrix( c( 90, 85, 69, 78, 85, 96, 49, 95, 
             90, 80, 70, 70), nrow =4, ncol=3)

score

rownames(score) <- c( 'hong', 'kim', 'lee', 'yoo')
colnames(score) <- c( 'english', 'math', 'science')
score

score['hong', 'math']
score['kim', c('math','science')]
score['lee']
score[,'english ]

rownames(score)
colnames(score)
colnames(score)[2]

c <- colnames(score)
c[2]
                      
#
#
# data frame : matrix 동일한 구조를 갖으며 자료형에 구애받지
#                     않고 저장하는 matrix
#
# data.frame() : data frame을 생성하는 함수
#
city <- c('seoul', 'busan','dajeon')
rank <- c(1, 2, 3)
city.info <-  data.frame(city, rank)
city.info

# city 숫자 백터 rank는 숫자백터
# 그러니가 frame이 두개를 묶어주는 듯 매트릭스(매트릭스는 동일한 형태만)와 동일한 형태
# 변수의 데이터 타입이 다르다. 변수가 중요하다.
# data.frame () (a, b, c, ,d ,e)에 넣을 때는 변수만을 넣는다.
 
class(city.info)
str(city.info)
dim(city.info)

# str 프레임에다 하면
# obs 관측치 몇개, variable 그러니까 변수 몇개
# 3행 2열 매트릭스는 데이터가 다 동일해야한다,프레임은 변수의 타입은 다를 수 있다.

name <- c('hong','kim','lee')
age <- c(22, 20, 25)
gender <- factor( c('m','f','m') )
blood.type <- factor(c ('a', 'o', 'b'))

person.info <- data.frame(name, age, gender, blood.type)
person.info


str(person.info)

# 앞으로 주욱 이 데이타 프레임을 쓰도록 한다.
#
#


#
# data frane 요소 읽기
#

city.info[ 1, ]
city.info[,1]
city,info[ ,1]
city.info[city.info$city ,]
city.info[city.info$city == 'seoul',' ]
city.info[ , 'rank']

person2.info <- data.frame(name=c('hong','kim','lee'),
age = c(22, 20, 25), gender= factor( c('m','f','m')),
blood=factor(c('a', 'o', 'b'')))

person2.info

person.info[person.info$name == 'hong',]
person.info[person.info$name == 'hong', c('name', 'age')]


### 남에게 설명할 수 있을 정도되야 이해하는 것.

data()

# data()
# R에서 데이터 셋을 줘서...
# 데이타 목록이 주욱 나옴

iris
head(iris)
tail(iris)

#
# 앞부분 6개 뒷부분 6개씩 보자. 

class(iris)
str(iris)
dim(iris)

#
# 생성하면 데이터 한번 보고 데이터를 보는데서부터 시작
# 순서 클래스 str 딤 즉, 데이터의 모양을 보는 것.
# 습관적으로 항상 해야하는 것들. 여기까지만 알아도 할 수가 있다?!
# 기본적인 분석을 할수 있어.
#
#

# 데이타를 안다는 것은 무엇인가,
# 데이터의 관측치 뭐 그 딴거.
# 기초의 통계.
# 데이터의 이해.
# eda=탐색적데이터분석
# 메모리에 데이터를 넣어야
# 여러가지 형식으로 그 안의 데이터를 넣을 수
# 가장 많이 쓰는 것이 데이타 프레임인 것이다.
# 각 변수들이 어떤 타입을 갖고 있느냐가 중요한 것이다.
# 타입을 보고 할 수 있는 일, 없는 일
# str하면 그것의 타입을 알 수 있는 것이다. str이 가장 중요한 것이지.
# 그래서 그걸 대충 알고 그 다음에 분석으로 나아가면 되겠지.
# as 변환함수로.
#
#
#
#
#
#
#
#
#
#
#
#
#

iris[ , c(1,2)]
# 아이리스 1,2(길이랑 폭)번 변수를 읽어와라
iris[ , c(1,3,5)]
# 아이리스 1,3,5 변수 읽어와라
iris[ , c('Sepal.Length', 'Species')]
# ' ' 문자열로 지정 그걸 읽어라 여기서 
# 송문자 대문자 잘 맞춰야 확인이 가능하다. 그러니까 저런 변수 건드릴 때. 
# 방금 대문자를 그냥 소문자로 썼더니 그랬따.

iris[ 1:5, ]
# 5개의 열 다 뽑아와라
iris[ 1 :5, c(1, 3)]
# 거기서 1,3 열만 가져올 것.



# >와 + +는 연결된다는 뜻이다 즉 한 행이 아니라는 이야기.

#
# matrix/ dataframe 에서 사용한ㄴ 함수
#

class(state.x77)
class(iris)

dim(state.x77)
dim(iris)

# 몇행 몇열인가 데이터 몇개 변수 변개

str(state.x77)
str(iris)

# stats 이거 미국의 주에 관한 것.

nrow(state.x77)
nrow(iris)

# 데이터 수

ncol(state.x77)
ncol(iris)

# 열, 변수의 수

head(state.x77)
head(iris)

tail(state.x77)
tail(iris)

unique(iris[,5])
# 다섯번쨰 변수 중복된 거 다 빼고 하나씩만 대표만 뽑아낸 것. 그 종류를 뽑아낸 것.

# 유니크는 중복을 배제한 값을 이야기하는 것, 숫자 타입에선 유니크 써선 안된다.

table(iris[,5])

# 다섯번째 품종 이름 도수분포표 <몇개인지>에 관해서 그룹별로 개수 세어주는
table(person.info[ ,'blood.type'])
table(person.info[ ,'gender'])

# 팩터타입 그룹형 유용한 경우에 관해서


#
# matrix/data frame 산술 연산 함수
#

colSums(iris[, -5]); apply( iris[ , 1:4], 2, sum)
colMeans(iris[ ,-5]); apply(iris[ , 1:4], 2, mean)
rowSums(iris[, -5]); apply(iris[ , -5], 1, sum)
rowMeans(iris[, -5]); apply(iris[ , -5], 1, mean)
apply(iris[ , -5], 2, median)

# 아이리스 다섯번째 열이 문자니까 뺀 것이다.

# 두번쨰 행수 행이냐 열이냐 그러니까 x,x,x - 행,열,어떤 함수
# apply 하수가 더 유용하다 유연하다.
#


# 
# 
# 
sx <- state.x77
head(sx)
sx.t <- t(sx) # 행과 열의 방향 전환, 전치 


head(sx.t)

#
# 복사해서 써라

#조건에 맞는 행과열 추출 (data frame만 가능)



subset(iris, Species == 'setosa')
# 행 즉 데이타 추출한 것 세토사의 종만 추출해라

subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)[ ,c( 2,4 )]
# 아이리스 5이상 4이상인 서브 셋

#
# 
# 관련 함수만 잘 써도 함수는 무궁무진하게 있어.
# r의 장점 함수가 무궁무진하게 만들 수.
#

#
# matrix/data frame 산술연산
#

# 복습오지게해람마.
# 데이터분석 기사들 주변지식들 넓혀야.
# 업무 많이 알아야. 

m1 <- matrix( 1:20, 4, 5)
m1
m2 <- matrix(21:40, 4, ,5)
m2


2 * m1
m2 - 5
2 * m1 + 3 * m2

# 매트릭스 일정의 행렬에 다 대해서 연산함


m1 + m2
m2 - m1
m2 / m1
m1 * m2

#
# matrix를 data frame으로, data frame을 matrix로 변환
#


st <- data.frame(state.x77)

# state.x77 데이터 프레임이 되었따
class(st)
str(st)
dim(st)

iris.m <- as.matrix(iris)

# 변환 함수 이말인즉슨 매트릭스로 변환해라 아이리스가 원래는 데이터프레임이었따.
class(iris.m)
str(iris.m)
dim(iris.m)

# 확인용 함수 # 데이터 타입을 확인할 때 말이다.
is.matrix(state.x77)
is.matrix(iris.m)
is.data.frame(st)
is.data.frame(iris)

# 알을 이용해 메모리에 데이타 저장하는 방법
# 변수
# vector                                                                
# list
# matrix
# data frame

# 데이터들의 타입들     #변수 ////1차원 배열, VECTOR, LIST /////2차원 배열 매트릭스, 데이타 프레임
# 숫자
# 문자
# 논리
# factor
# 기타
# NULL
# NA

#
# 자료구조, 데이타 스트럭쳐
# 데이타 타입, 자료구존데 알이나 파이썬은 이걸 타입화한 
# 스크립트의 언어이기떄문에 타입으로 봐.
#


# 2.5 파일 읽기/쓰기
#
#
# csv file 내용 읽어서 data frame 생성
#


air <- read.csv('C:\\tomwaitz\\WorkspaceR\\airquality.csv', header = T )
air2 <- read.csv('C:\\tomwaitz\\WorkspaceR\\airquality.csv', header = F)

# no such file 나오는 이유
# header = t냐 맨 위의 열이름으로 쓸거냐 데이터로 쓸거냐

#
# csv 뜻 comma seperator velue 
#


# c\-tomwaitz-workspacer\airqualt & 3dar r
# 'C:\\tomwaitz\\WorkspaceR\\airquality.csv' 이렇게 억지로 쓰는 방법도

class(air)
class(air2)

str(air)
str(air2)

dim(air)
dim(air2)

air
air2

#
# 엑셀은 자바 다음에 하는 걸로
# 


