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
min(score)                   
which.min(score)             #최저값의 인덱스

idx <- which(score>=60)
score[idx] <- 61
score

idx <- which(df.xlsx[,1:2]=="NA", arr.ind = T)
# arr.ind=T : 해당조건의 행/열값을 확인 할때
idx
































