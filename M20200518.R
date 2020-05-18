# 5일차 # 엑셀파일 읽는 방법, 별도로 설치하는 환경 있어야.#텍스트, 엑셀파일 읽기함.
# 범주형, 연속형. 두가지의 유형 데이터. 단일 변수형태냐, 단일 변수형태냐. 0#다변 일변량이냐 단수량이냐? 문제정의,데이터수집, 데이터전처리, 탐색적, 데이터분석, 보고서, 발표 #이 절차는 순차적이긴 하지만 계속 피드백하는 과정을 거쳐. 
#분석절차 1. 문제정의 2. 자료수집 3. 자료 전처리 4. 자료 탐색(EDA) "오늘 18,내일 19 자료 탐색에 대해서 배울 것. 단일 변수 범주형 자료, 단일 변수 범주형, 연속형. 전처리라는 것은 수집한 데이터가 완벽한 자료가 아니므로 완벽한 형태로 수정하는 작업을 대이터 전처리라고 한다. 데이터 전처리 하는 과정에 더 많은 시간 걸릴 수 있어. 3,4, 핵심. 우리의 실습도 이것이 될 것. 정해진 데이터를 주겠다. 직접 수집하는 것은 다음주에 하겠다. 
#GIT을 사용하는 것에 대하여서. #관리자권한으로 실행하면 오류가 줄 것이다. #패스명령에 익숙해지도록 합시다. 안되면 단계단계 끊어서 할 수 있도록 합니다. 
#명령하고 한칸 뛰고 쓰는 습관을 가지도록 합니다. []있으면 디렉토리, 없으면 파일.
#git status 추적하지 않은 목록의 파일이 나옵니다. #git hub desktop
# 명령을 내리고, 화면에 나타나는 메시지를 잘 읽어야. 결정을 해야. 
#git으로 관리할 필요가 있는 파일들은 어떤 파일인가? git창엔 관리안하고 있는 것들이 주욱 나 와. 관리할 것만 선택하면 된다. git add, git commit 했던 동작들을 git hub desktop으로  간 편 히 할 수 있어. # history에 내용들. # file - new repository - " 이것이 깃 인 잇과 같은 것입니다. 
#여기서 사용한 것들을 집에서 가져다 쓸 수 있는 방법인 것. git hub 파일 사이즈에 제한은 있다. 25mb넘으면 안됩니다. 그럴 땐 파일을 분할해서 올려야. # 집에서 깃허브, 피일- 클론 리파지토리, 클론이란 가지고 오는 것. 사이트에서. #clone 복사본 만들기 #클론 리파지토리 이용해서,  push 다운로드, # 푸시에러 풀에라 날수, 이때는 업로드 파일. 동기화를 잘할 수 있어야.
#2.1 txt/excel 파일 읽기
#2.2 자료의 종류
#2.3 단일 변수 범주형 자료 탐색
#2.4 단일 변수 연속형 자료 탐색
setwd("C:\\tomwaitz\\WorkspaceR")
setwd("C:/tomwaitz/WorkspaceR")
# "directory 경로 : directory 변경 함수. 스크립트파일 위치 디렉토리 데이타위치를 분리해서 저장하는 경우가 왕왕있어. 데이터랑 스크립트가 다를 떄. 이 때 setwd로 변경해주는 것이다. 더블 "" 포테이션? 이 안에다가 넣어야. 그리고 '\' 두개씩 써, 그러니까 하나씩 추가.
#text 파일 읽기
df <- read.table(file = "airquality.txt", header = T)
 d f
class(df)
#Excel 파일 읽기
#Excel 파일 읽기
install.packages("xlsx")               # excel 파일 읽을 때 패키지
install.packages("rJava")              # Java 실행 패키지
# 기본 패키지 외에 설치된 패키지 사용 - library load 작업.
library(rJava)                                 # 라이브러리 순서 이거대로 지켜야한다.
library(xlsx)                                  # 껐다 키면 로드작업만 다시
df.xlsx <- read.xlsx(file = "airquality.xlsx",
                     sheetIndex = 1,
                     encoding = "UTF-8")
df.xlsx # r의 장점 내가 기능이 필요하면 공개용으로 제공이 된다. # change
class(df.xlsx); str(df.xlsx);head(df.xlsx);tail(df.xlsx)
# 파일을 왜 못 읽을까 위치가 안 맞기 때문. # 스크립트에 남겨놓은 것을 중요하게 생각해야.
setwd("C:\\tomwaitz\\WorkspaceR") 
score <- c(76, 84, 69, 5, 95, 6, 85, 71, 88, 84)
which(score ==69)
which(score>=85)
max(score)                   
which.max(score)             #최고값의 인덱스
min(score)                   #최저값의 인덱스
which.min(score)             
idx <- which(score>=60)
score[idx] <- 61
score
idx <- which(df.xlsx[,1:2]=="NA", arr.ind = T)
# arr.ind=T : 해당조건의 행/열값을 확인 할때
idx
#Text File 읽기
df.txt <- read.table(file="airquality.txt",
                     header=T,                    #첫번째 줄이 제목이다. 원본부터 확인
                     encoding = "UTP-8")
df.txt
class(df.txt)
str(df.txt)
head(df.txt)
tail(df.txt)
#엑셀, 탭으로 분류된 텍스트!? read.table
#csv, text, excel 파일 읽기. 전부다 read.csv, read.table read.xlsx
#XML(exfended Markup Language), JSON(Java Script Object Notation) : jason 많이 써
# 자바 스크립트, 라고 해서 웹 프로그래밍 만들 때 쓰는 언어. 파이썬아는 사람은 jason을 이해하기가 더 용이하다고 한다.

#자료의 종류, 자료의 종류에 따라 적용할 수 있는 분석 방법이 다르다. 분석을 해야할 자료를 가지고 있을 떄 1차적으로 해야 할 일은 해당 자료가 어떤 분류에 속하는지를 파악하는 일이다. -자료 특성에 따른 분류 분석 대상 자료의 특성에 따라 범주형 자료와 연속형 자료로 분류한다. 1. 범주형 자료 (categorical data) : -범주 또는 그룹으로 구분할 수 있는 값 - 범주형 자료의 값은 기본적으로 숫자로 표현할 수 없고, 대소비교나 산술연산이 적용되지 않는다. -범주형 자료는 대체로 문자형 값을 갖는데, 숫자로 표기할 수 있으나 계산이 가능한 연속형 자료가 되는 것은 아니다. 자료분류할 수 있어야.-------------팩터형 #2.연속형자료(이산형자료):크기가 있는 숫자들로 구성된 자료,연속형자료의 값들은 대소비교,산술연산이가능하기때문에 다양한 분석방법이 존재한다. 
#자료(data) : 어떤 주제를 가지고 값을 모아 놓은 것 전체 관측값 (observation) : 자료에 포함된 값들 통계학에서의 변수는 "연구, 조사, 관찰하고 싶은 대상의 특성(feature)" 변수 개수에 따라 1. 단일변수 자료 ; 일변량 자료 하나의 변수로 구성된 자료, 2. 다중변수자료, 다변량 자료, 두개 이상의 변수로 구성된 자료 특별히 두개의 변수로 구성된 자료를 이변량 자료 단일 변수 자료는 vector에 저장하여 분석 다중변수자료는 matrix, dataframe에 저장하여 분석
#변수의 개수와 자료의 특성에 따른 분류 1. 단일변수 범주형자료 2. 단일변수 연속형 자료 3. 다중변수 범주형자료 4. 다중변수 연속형 자료
#2.3 단일 변수 범주형 자료 탐색 # 단일 변수 범주형 자료 : 특성이 하나이면서 자료의 특성이 범주형인 자료, 범주형 자료에 할 수 있는 기본 작업 : 자료에 포함된 관측값들의 종류별로 개수를 세는 것, 중류별로 비율을 구하는 것 시각화는 막대/원 그래프를 사용 테이블함수 통해서 몇개 정도인지나 그정도 알수 있다. 도수분표표 <- 종류별로 개수를 세는 것, 종류별로 비율을 구하는 것, 시각화는 막대/원 그래프를 사용. 시각화라고 하는 것은 GUI, 그림으로 보여주겠다는 것. 지도로 표현해주겠다고. 대부분은 그래프를 이용한다. #ML은 빅데이터. 머신 러닝, 딥 러닝, 데이터분석이 없으면 수행하기 어려워. 하나의 변수.#ML은 빅데이터. 머신 러닝 딥 러닝, 데이터분석이 없으면 수행하기 어려워.
favorite <- c('winter','summer','spring', 'summer', 'summer','fall',
              'fall','summer', 'spring', 'spring'); favorite
class(favorite) ; str(favorite) ; dim(favorite)
# : 봄, 여름, 가을, 겨울로 그룹화가 가능하다. 이런 내용을 범주형 데이터라고 함. R이 팩터라고 이야기해줄 수 있지만. 우리서 여기는 백터 형식으로 문자만 넣었을 뿐이야. 
as.factor(favorite)
favorite
#################### 단일변수의 범주형 <- 도수분포표
table(favorite)#도수분포표작성
table(favorite)/length(favorite)#도수분포비율
ds <- table(favorite);
ds
class(ds)
str(ds)
dim(ds)
barplot(ds, main = 'favorite season') #기본 막대 그래프
#ds 도수분포표, maind은 제목인 것이다
ds.new <- ds[c(2,3,1,4)] # 내가 원하는 순서로 만들 수 있어
ds.new
barplot(ds.new, main = 'favorite season')
pie(ds.new, main = 'favorite season')
favoirte.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
str(favoirte.color)
ds <- table(favoirte.color)
ds
barplot(ds, main = 'favorite season')
color <- c('green','red','blue')
names(ds) <- colors;
ds
barplot(ds, main = 'favorite season',
        col=colors)
pie(ds, main = 'favorite season', col = colors)
#############################################################
favorite.color <- c(2, 3, 2, 1, 1, 2, 2,
                    1, 3, 2, 1, 3, 2, 1, 2)
ds <- table( favorite.color )
ds
barplot( ds, main = 'favorite season' )
colors <- c('black', 'red', 'blue') ############### 색깔 어디서부터 어디까지 있나.
names(ds) <- colors;
ds
barplot(ds, main = 'favorite season',
        col = colors)
pie(ds, main = 'favorite season',
    col = colors)
#
# 단일 변수 연속형 자료 탐색
# 단일변수연속형 자료 : 특성이 하나이면서 자료의 특성이 연속형인 자료 연속형 자료는 관측값들이 크기를 가지므로 다양한 분석방법 존재 #1. 평균 : 하나의 값으로 전체를 대표할 수 있는 값, 이상 값에 영향을 받는다. 2. 중앙값 / 자료의 값들을 크기순으로 정려하였을 떄 가장 중앙에 위한 값, 이상값에 영향을 받지 않는다. 3. 절사평균 자료의 관측 값들 중에서 작은 값들의 하위 n%와 큰 값의 상위 n%를 제외하고 중간에 있는 나머지값들만 가지고 평균을 계산하는 방식 4. 사분위수/ 주어진 자료에 있는 값들을 크기순으로 나열했을 때 4등분하는 지점에 있는 값 1사분위수(Q1), 2사분위수(Q2, 중앙값과 동일), 3사분위수(Q3), 전체 자료를 4개로 나누므로 4개 구간은 25%의 자료 가 존재 5. 산포(distribution) : 주어진 자료에 있는 값들이 퍼져 있는정도분산(variance) : 주어진 자료의 각각의 값이 평균으로부터 떨어져있는 정도를 게산하여 합산한 후 값들의 개수로 나누어 계산 #표준편차(standard deviation) : 분산의 제곱근으로 계산####################3 계산이 가능한 것은 연속형이라고 볼 수.#### 어떤 범위를 벗어나면은 '이상치'라고 한다. 이상치 때문에 분석에 영향을 미칠 수 있어. 전처리 때에 이상치를 제거해준다. 탐색적데이터 분석에서 우리가 하는 일. 
###############R은 도구일 뿐이다. - 연속형 자료의 시각화 따라빠빠빠
# 시각화는 히스토그램(Histogram)과 상자 그래프(box plot)를 사용
weight <- c(60, 62,64,65,68,69)
weight
weight.heavy <- c(weight, 120)
weight.heavy
# "120"은 이상치라고 할 수. #이상치는 어떤 기준으로 세워야할까.
mean(weight)
mean(weight.heavy)
median(weight)
median(weight.heavy)
mean(weight, trim=0.2)             #상하위 20% 떼어 내겠다.
mean(weight.heavy, trim = 0.2)     # 
####################기계적으로 보면 안된다는 말.
#사분위수
quantile(weight.heavy)
quantile(weight.heavy, (0:10)/10)
#(0:10)구간을 몇개로 나눌것인지를 지정
#0.1~1.0 사이 백분율로 10%~100%
summary(weight.heavy)#summary를 많이 사용할 듯
# 산포
var(weight) # 분산
sd(weight)#표준편차
range(weight)#값의 범위(최소값과 최대값)
diff(range(weight))#최대값과 최소값의 차이
#연속형 자료 시각화
#histogram : 연속형 자료의 분포를 시각화하는 도구 연속형 자료에서 구간을 나누고 구간에 속한 값들의 개수를 세는 방법으로 사용
class(cars)
str(cars)
dist <- cars[,2]
dist <- cars$dist
dist
boxplot.st(ats(dist) # 구체적인 값을 파악할 떄 사용 # $stats : 사분위수 # %n 관측값의 수 # %conf : 중앙값에 대한 신뢰구간 $out : 특이값(이상치) 목록 
cars$dist
a <- cars$dist
a
sort(a, decreasing = T)
############################### 히스토그램 그리기
hist(dist, main = "Histogram for 제동거리",
     xlab = "제동거리", ylab = "빈도수",
     border="blue", col = 'green',
     las=1, breaks =5 )                   # las x축 바로할건지 눕힐건지
hist
rm(list=ls())
cars
#상자 그래프(boxplot, 상자 수염 그래프) # 사분위수를 그래프형태로 시각화하는 도구#상자그래프는 하나의 그래프로 데이터의 분포형태를 포함한 다양한 정보를 전달 - 자료의 전반적인 분포를 이해하는데 도움-구체적인 최소/최대/중앙값을 알기는 어렵다.
boxplot (dist, main = '자동차 제동거리')
boxplot.stats(dist)
########################## 우리가 하는 모든 작업은 데이터를 이해하는 작업을 하고 있는 것, 이미 발생된 데이터를 가지고 한다. 그리고 이면의 데이터를 파악, 유추하는 것이다. 이전에는 분석할 수 있을만한 자원들이 없었던 것이다. 이제는 모든 것을 할 수. 모든 것을 파악할 수 있다는 말인 듯. ^^ <- 데이터의 이면을 찾기 위해서.



