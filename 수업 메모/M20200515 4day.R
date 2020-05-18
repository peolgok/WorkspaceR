# 4day
# 알고리즘 Algorithm에 대한 이해
# 선택구조와 방법구조
# 함수작성 방법 - 필요하면 나 자신이 함수를 만들어낼 수도 있어.
# 변수명 / 표준 입력/ 표준 출력
# 변수명 부여 방식
numberValue <- 1                       # camel 표기법 : 중간중간에 대문자를 쓰는 방식
str_value <-  "R Language"             # snake 표기법 : 언더 바를 써서 구분하는 방식      
booleanvalue <- TRUE                   # 일반 표기법 : 전부 소문자로 표기하는 방법, 키인하기는 편해. 의미전달
numberValue; print(numberValue)
str_value; print(str_value)
booleanvalue; print( booleanvalue)
# 나와 있는 자료들에 있어선 제각각으로 표기할 것, 각자의 방법을 가질 것.
# ;의 사용용도
# 표준 출력 장치에 출력
# print() : 자동 줄 바꿈( \n, 자동개행)
# cat() : 여러 내용을 출력할 수 있고, 자동 줄바꿈이 일어나지 않는 표준 출력 장치에 출력하는 함수, 프린트 print와의 차이를 알아 둘 것.
# 제어문자 : 화면에 출력되지 않고 기능을 수행하는 문자, 역슬래쉬로 시작한다. 
# \n : 개행 문자(줄바꿈)
# \t : tab 문자
cat( 'Numeric number: ', numberValue, '\n')
cat('string:',str_value,'\n')
cat('boolean value :', booleanvalue, '\n')
print( '--------------------------------')
cat( 'Numeruc number :', numbervalue, '\t',
      'string : ', str_value, '\t',
      'Boolean value:',booleanvalue, '\n')
cat('test')
# scan() : 표준입력 장치로부터 입력받는 함수
# readline() : 표준입력 장치로부터 입력받는 함수
# edit() : 표준입력 장치로부터 표형식으로 입력받는 함수
# 출력장치를 지정하지 않으면 표준출력 장치로 출력이 된다.
# 입력은 출력의 반대, 입력 디바이스로부터 메모리에 기억시키는 동작.
# 표준장치들 1. 에러표시stderr, 2. 표준입력 stdin, 3. 표준출력stdout
inputData <- scan()           # 빈줄이 입력될때까지 숫자를 입력 받는다
Class(inputData)              # 
inputData
inputData <- scan(what = character())
class(inputData)
inputData
inputData <- readline('inputdata <-')
class(inputData)
inputData
# readline 딱 한번, 한줄만 입력할 수 있는 것이다. 
number1 <- readline('input number1 :')
number2 <- readline('input number2 :')
result <- number1 + number2
result
# readline - 문자, 
number1 <- readline('input number1 :')
number2 <- readline('input number2 :')
result <- as.numeric(number1) + as.numeric(number2)
result
# as 바꾸는 것에 익숙해져야.
# 실습문제:두 수를 입력받아서 다음과 같이 출력 
# 입력 i.n 1 : 10 , i.n 2 : 5
# 출력결과
# 
number1 <- readline('input number1 : ')
number2 <- readline('input number2 : ')
result <- as.numeric(number1) + as.numeric(number2) 
result
result <- as.numeric(number1) - as.numeric(number2)
result
result <- as.numeric(number1) * as.numeric(number2)
result
result <- as.numeric(number1) %% as.numeric(number2)
result
##################### 두수입력두수계산두수출력문법에맞게표현
number1 <- as.numeric(readline('input number1 : '))
number2 <- as.numeric(readline('input number2 : '))
resultAdd <- number1+number2
resultSub <- number1-number2
resultMul <- number1*number2
resultDiv <- number1/number2
resultRem <- number1%%number2
cat( number1, '+',number2,'=',resultAdd,'\n',
     number1, '-',number2, '=', resultSub,'\n',
     number1, "*",number2, '=', resultMul,'\n',
     number1, "/",number2, '=', resultDiv,'\n',
     number1, "%%",number2, '=', resultMul,'\n')
# 이것이 프로그램이다.
# print는 여러개 못 나타낼 수, cat 내 마음대로 원하는대로 넣을 수 있다는 장점점
# 이것은 모양을 만드는 것, 보기 좋게 말이다.
#Algorithm(LOGIC)이해
#문제를 해결하기 위한 '일처리 순서'
#알고리즘요건 반드시 0개이상의 입력이 있어야한다/반드시1개이상의출력이있어야한다/
#반드시끝낼수있어야한다/효과적인방법으로정의되어야한다/명확한방법으로정의되어야한다
#특정한언어로표현한것을프로그램이라고한다.알프로그래밍이라는것은주어진언어를알프로그램으로
#언어화하여작성하는것을말한다고할수있는것입니다.
#컴퓨터프로그램의구조#순차구조:시작부터끝까지차례대로수행#선택구조:조건에따라처리방향을바꾸어
#수행#반복구조:조건이만족하는동안동일한내용을반복수행#컴퓨터프로그램은알고리즘에기반으로
#기억장소원리와순차/선택/반복구조를조합하여작성한다#위으것은순차구조라고할수있다#전처리분석을
#하다보면알고리즘을뜯어봐야할떄가,내생각을알고리즘으표현할줄은해야
#2.2선택구조선택구조:조건에따라처리방향을결정하는구조/선택구조1.단순선택구조2.양자택일구조.3다중선택구조
#4.중첩선택구조#단순선택구조# if = 단순선택구조를 제공 만약에. 트루인지 아닌지를 따져 ==
#{}중괄호code block,code집합if는항상 코드블록써야.
job.type <- 'A'
bonus <- 0
if(job.type=='A'){
    bonus <- 200
}
cat('job type : ', job.type,'\t\tbonus:',bonus)
#양자택일구조 #else는 조건이 거짓일 때 수행하는 함수라고 할 수 있습니다,만약에조건이 참이면
#바로밑에있는것을수행하고거짓이라면else이하의것을수행하면되겠습니다요. 이게양자택일구조있습죠
job.type <- 'B'
bonus <- 0
if(job.type=='A'){
    bonus <- 200
}else{
    bonus <- 100
}
cat('job type : ', job.type,'\t\tbonus:',bonus)
#다중선택구조
score <- 72
if(score>=90){
    grade <- 'A'
}else if(score>=80){
    grade <- 'B'
}else if(score>=70){
    grade <- 'C'
}else if(score>=60){
    grade <- 'D'
}else{
    grade <- 'F'
}
cat('score: ', score,'\t\tgrade :',grade)
#중첩선택구조
a <- 2
b <- 1
c <- 3
if ( a > b ) {
    if ( a > c ) {
        max <- a
        if ( b > c ) {
            mid <-  b; min <-  c 
        } else {
            mid <-  c; min <-  b
        }
    } else if ( c > b ) {
        max <- c; mid <- a; min <- b
    }
} else if ( B > c ) {
    max <- b
    if ( a > c ) {
        mid <- a; min <- c
    } else { 
        mid <- c; min <- a
    }
}
cat( 'max : ', max, '\tmid : ', mid, '\tmin : ', min)
#양자택일구조인가.
number <- 10
remainder <- number%%2
if (remainder==0){
    oddeven <- '짝수'
}else{
    oddeven <- '홀수'
}
cat ('number:',number,'은',oddeven,'이다.')
#if를 수행할 것인가 else를 수행할 것인가.
a <- 5
b <- 20
if(a>b&b>5){
    cat(a,'>5 and',b,'>5')
}else{
    cat(a,'<=5 or', b, '<=5')
}
###############################
a <- 8; b <- 5;c <- 10; min <- a
if(b<min){
   min <- b
}
if(c<min){
    min <- c
}
cat('a=',a,'b=',b,'c=',c,'min=',min)
#####################하나의 숫자를 입력받아 짝수인지 홀수인지 출력

number1 <- as.numeric(readline('input number1 : '))ㅋ
if(number1 %%2 == 0){
    cat(number, '는 짝수입니다.')
}else{
    cat(number,'는 홀수 입니다.')
}
number1 <- as.numeric(readline('input number1 : '))
number2 <- as.numeric(readline('input number2 : '))
#### 하나의 숫자를 입력받아 3의 배수이면 "3의 배수"
#### 5의 배수이면 "5의 배수"
#### 3,5의 배수가 아니면 "3,5의 배수가 아닙니다."
#### 출력
number1 <- as.numeric(readline('input number1 : '))
###############
if(number1 %% 3 == 0){
    cat(number1, '3의 배수.')
}
if(number1 %% 5 == 0){
    cat(number1, '5의 배수.')
}else{
    cat(number1, '3,5의 배수가 아닙니다')
}
############################## 이거 두개이면 어떻게 해야하나?
number <- as.numeric(readline("input number :"))
multiple3 = number %% 3 == 0
multiple5 = number %% 5 == 0
if (multiple3){
    cat(number,'는 3의 배수입니다')
}else if(multiple5){
    cat(number,'는 5의 배수입니다')
}else{
    cat(number,'는 3,5의 배수가 아닙니다')
}
#반복구조:조건이 만족하는동안 동일한 내용을 반복수행/반복횟수가 
#정해진 경우 for 그렇지 않은 경우 :while
# for문:"for([반복제어변수]in [반복범위])"이것은 하나의 구문 {; })
for(i in 1:10){
    print( '*')
}
for (i in 1:10){
    cat(i,'')
}
multiple = 2
for (i in 2:9){
    cat(multiple, '*',i,'=',multiple*i,'\n')
}
for(i in 2:9){
    for(j in 1:9){
        multiple = i*j
        cat(multiple, '\t')
    }
}
# 반복제어변수초기화 while (반복제어변수조건검사){
#반복제어 변소 값변경 
#}
# For는 정해져있을 때  While은 정해져있지 않을 때.
i=1                #반복제어변수초기화
while(i <=10){     #반복제어변수조건검사,참인동안반복
    print('*')     
    i <- i +1      #반복제어변수값변경,누적
}
################# "\t" 이 키의 중요
i <- 2
while( i <= 9 ) {
  j <- 1
  while( j <= 9 ) {
    multiple = i * j
    cat( multiple, '\t' )
    j <- j + 1
  }
  cat('\n')
  i <- i + 1
}
#함수(Function):단위기능을수행하는코드집합함수종류:1.내장함수:r에미리내장된함수
#3rd함수:제3자가작성하여배포한함수/사용자정으함수:사용자가직접정의한함수
#함수형식 만들 때
#          함수이름 <- function(인수목록){
#          함수내용에해당하는코드집합
#          return (return값)
#   }
#함수호출
#함수명(인수목록)
#함수정의
multiple <- function(x){
  for(i in 1:9){
    multiple <- x*i
    cat(x,'*',i,'=',multiple,'\n')
  }
  return()
}
multiple(2)
#########################################3
mymax <- function(x,y){                  #두개의 인수를 받아서 리턴해주시오
  num.max <- x                           #
  if(y>num.max){
    num.max <- y
  }
  return(num.max)
}
mymax(5,6)                                #리턴값의 활용 (리턴은 하나밖에 활용 안된다.)
a <- 10;b <- 5;c <- 8
max <- mymax(a,b);max <- mymax(max,c)
max
#####################값이 여러개인 함수
mycalc <- function(x,y){
  add <- x+y
  sub <- x-y
  mul <- x*y
  div <- x/y
  rem <- x%%y
  return(list(ret.add = add, ret.sub = sub, ret.mul = mul, ret.div = div, ret.rem=rem ))
}                         # 백터는 동일 자료형, 리스트는 타입의 유연함을 유지할 수
result <- mycalc(10,5)
cat('10+5=',result$ret.add,'\n')
cat('10-5=',result$ret.sub,'\n')
cat('10*5=',result$ret.mul,'\n')
cat('10/5=',result$ret.div,'\n')
cat('10%%5=',result$ret.rem,'\n')
###############################위에거는 리스트 함수
###############################아래는 백터의 함수
mycalc2 <- function(x,y){
  result <- c(x+y,x-y,x*y,x/y,x%%y)
  return(result)
}             
mycalc2(10,5)
################################교재77페이지

























