# 스토어드 프로시져

> 학습목표

- 스토어드 프로시저를 사용할수 있도록
  - 문법을 이해하고
  - 실습

## 스토어드 프로그램의 특징 장단점

### 특징 (스토어드 프로그램)

- SQL이라는 언어는 선언적이다
  - 자바는 절차적이고, 객체지향적인 언어
  - 스칼라는 절차적이고, 객체지향적이며 함수형 언어
  - C언어는 절차적이고, 구조적(함수지향적) 언어
- SQL이라는 언어로 기술되며(선언적인 언어)
- 데이터배이스 내부에서 돌아가는 함수가 >> 스토어드 프로그램

### 종류 (스토어드 프로그램)

- 함수
- 프로시져
- 트리거
- 이벤트 핸들러

#### 함수와 프로그램 차이

- 함수와 프로시져가 비슷하지만 차이가 있다
  - 스토어드 함수 :
  - 스토어드 프로시져 :  
- 트리거와 이벤트핸들러가 비슷하지만 차이가 있다
  - 스토어드 트리거
  - 스토어드 이벤트핸들러

### 장점 (스토어드 프로그램)

- 어플리케이션 쓰루풋이 좋다(SQL을 사용하는 응용프로그램의 성능 향상)
  - 생각해보면 SQL문은 필터의 역할인데, 이를위해 네트워크 트레픽으로 이동하므로 네트워크를 덜타도 되는 장점때문에 쓰루풋이 좋다
- 그런의미에서 네트워크 트레픽토 감소한다
- 보안성이 좋다
- 개발업무의 구분
  - BDA 한테 시키면 됨 굿굿
  - 개발자는 코드를 개발

### 단점 (스토어드 프로그램)

- 유지보수가 매우매우 어렵다
  - DBA가 있을만큼 큰회사가 드물기도 하고 DBA 가 워낙 인원이 적기도 한데
  - 잘 쓰는게 아니라서 할사람도 적고 작성자 본인이 아니면 유지보수가 어렵다
- Git에서 관리가 쉽지 않다 : 저장이 데이터베이스에 되기 때문에
  - DBA들이 GIT을 안쓰기도 하고
- 문제가 생겼을 때 Rollback은?
  - 답이없다
- 명령 자체의 성능 감소 : 명령을 컴파일해서 실행하는 주체가 DB
  - 아무튼, 하나하나는 프로그래밍 명령의 성능이 안좋다(자바보다 구림)

## 스토어드 사용처

- 게임분야
- 웹분야는 케바케
- 이걸 왜 쓰는지는 대충 넘어갔다. 조금 더 찾아볼것! @todo

# 스토어드의 > 펑션(함수) vs 프로시져
- 스토어드 함수 : 쿼리문 내부에서 쓸 수 있다
- 프로시져 : 쿼리에서 쓸 수 있다
- 함수는 제약조건이 많고
- 프로시져는 제약조건이 적다
- 커스텀은 대부분 프로시져가 편하니까 

```sql
DROP PROCEDURE IF EXISTES SP_HELLO;
DELIMITER $$
CREATER PROCEDURE SP_HELLO()
  BEGIN
    DECLARE STR CHAR(20) DEFAULT 'POPI';
    SET STR = 'HELLO, WORDL!';
    

```
![image](https://user-images.githubusercontent.com/31065684/120414051-4f6c3600-c394-11eb-97ea-b68d6d82cc56.png)
- 델리미터 : 한줄의 끝 잠깐 $$ 로 변경
- 
ㅍㅇㄴ




# 쉬고옴


## 뭐야 막 지나간
```sql
CREATE TABLE TEST3(NUM INT);
INSET INTO TEST3 VALUES(1);
DROP PROCEDURE IF EXISTS SP_TEST3;
DELIMITER $$
CREATE PROCEDURE SP_TEST3()
BEGIN
DECLARE A IN INT DEFAULT 1;
SELECT MAX(NUM) INTO A FROM TEST3;
SET A = A+1;
INSERT INTO TEST3 VALUES(A);

```



## 실습 SQL프로시져로 별찍기
```sql
CREATE TABLE START(LNO INT, LINE VARCHAR(64));

DROP PROCEDURE IF EXISTS ST_STAR;
CREATE PROCEDURE IF SP_START;

DELIMITER $$
CREATE PRCEDURE SP_STAR(IN LNO INT)
BEGIN
DECLARE S AS VARCHAR(64);
DECLARE I INT DEFAULT 1;
WHILE I <= LNO DO
SET
INSERT INTO STAR VALUES(I,S) 
END

```
