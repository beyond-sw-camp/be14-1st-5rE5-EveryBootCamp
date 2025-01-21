
<a href="https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp">
    <img src="https://github.com/user-attachments/assets/0208a959-c013-4db3-9d94-7a6d50b7a08a" align="right" height="90" />
</a>

# ⛺ 모두의부캠

<center>
  <img src="https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B4%80%EB%A0%A8/EVERYBOOTCAMP%20MAIN%20IMG.jpg?raw=true" width ="80%" />
</center>


![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=flat&logo=mariadb&logoColor=white) ![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black) ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=flat&logo=ubuntu&logoColor=white)  <img src="https://img.shields.io/badge/ERD%20cloud-%230000FF.svg?style=flat&logo=erlang&logoColor=white"> <img src="https://img.shields.io/badge/DA%23-0B6121.svg?style=flat&logo=draw.io&logoColor=white"> ![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=flat&logo=intellij-idea&logoColor=white) <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=GitHub&logoColor=white">


## 👨‍💻 DEVELOPERS
|<img src="https://symbl-world.akamaized.net/i/webp/55/a68f187591becc1f332435077d3888.webp" width="100" height = "100"> |<img src="https://github.com/user-attachments/assets/03c9c5d5-fc4d-41e3-a959-60f297d9081d" width="100" height = "100"> | <img src="https://github.com/user-attachments/assets/384954de-5a78-401b-adcc-a77373510239" width="100" height = "100">|<img src="https://github.com/user-attachments/assets/d3180487-814d-49f6-b9d2-075ccb7126c2" width="100" height = "100"> | <img src="https://github.com/user-attachments/assets/f5ab43fb-ac0a-44e5-b149-2545cd5bd2df" width="100" height = "100"> | <img src="https://github.com/user-attachments/assets/6ce72bff-b4f2-447c-90e8-7133a4207b4e" width="100" height = "100">|
| :------------------------------------: | :-------------------------------------: | :-----------------------------------: | :--------------------------------------: | :-----------------------------------: | :------------------------------------------: |
| [강수지](https://github.com/50071) | [고윤석](https://github.com/jakego1) | [곽우석](https://github.com/wooseok718) | [김석희](https://github.com/yehang218) | [김성민](https://github.com/SungMin-hub) | [최혜민](https://github.com/HMYIEN) |

<br>

## 🔖 목차

#### [📂 Git 폴더 구조](#-Git-폴더-구조) <br>
#### [📢 프로젝트 개요](#-프로젝트-개요) <br>
#### [🛠 주요 기능](#-주요-기능) <br>
#### [📅 WBS](#-WBS) <br>
#### [🙆‍♀️ 요구사항 명세서](#-요구사항-명세서)
#### [🗃️ DB 모델링](#-DB-모델링) <br>
#### [🪄 DDL](#-DDL) <br>
#### [🧲 Replication](#-Replication) <br>
#### [💡 TEST CASE 정의서](#-TEST-CASE-정의서) <br>
#### [💡 TEST CASE 시연](#-TEST-CASE-시연) <br>
#### [🔜 향후 확장 계획](#-향후-확장-계획) <br>
#### [🍪 동료 평가](#-동료-평가) <br>

<br>


## 📂 Git 폴더 구조

```cmd
🗃️ EveryBootCamp
├─ 📁DDL
│  └─ 📜create_table.sql
├─ 📁DML
│  ├─ 📜 init_settings.sql
│  └─ 📁 각 테이블명
│      └─ 📜더미 데이터 생성 sql
├─ 📁Object
│  ├─ 📜procedure 관련 sql
│  ├─ 📜index 관련 sql
│  └─ 📜trigeer 관련 sql
├─ 📁TESTCASE
│  └─ 📜모든 테스트 케이스 sql
└─ 📁파일
    ├─ 📁GIF
    └─ 📁PNG
```
<br>


## 📢 프로젝트 개요
### 1. 프로젝트 주제
한화시스템 SWcamp 수강생과 수료생을 연결하는 통합 <b>커뮤니티 서비스</b>

### 2. 프로젝트 소개
"에브리부캠"은 한화시스템 SW Camp의 <b>수강생과 수료생을 위한 네트워킹 플랫폼</b>입니다.
교육 과정에서 얻은 지식과 경험을 나누고, 취업 정보 등을 공유하여, 서비스 이용자 다수가 함께 성장할 수 있는 종합적인 커뮤니티 서비스를 제공합니다.

### 3. 프로젝트 배경

<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B4%80%EB%A0%A8/README2.png?raw=true" height="250"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%EA%B4%80%EB%A0%A8/README1.png?raw=true" height="250"> </img>
* 수료생과 수강생 간, 수강생 안에서도 각 기수 간의 <b>정보를 공유할 수 있는 공간과 기회가 부족</b>한 상황
* 누구에게나 공개된 환경에서는 제공할 수 있는 정보가 제한적
* 성공적으로 취업한 <b>선배들의 경험과 노하우</b>를 배울 수 있는 기회 필요

<br>

## 🛠 주요 기능
- <b>자유 게시판</b> : 수강생과 수료생을 위한 커뮤니티 공간 제공
  
- <b>취업 정보 게시판</b> : 선별된 취업 정보 공유
  
- <b>스터디 모집 페이지</b> : 수업 외적으로 다른 주제에 대한 스터디 모집
  
- <b>멘토링</b> : 수료생과 수강생이 멘토, 멘티 관계가 되어 1:1 상담
  
- <b>일정</b> : 공유 일정이 포함된 캘린더를 통한 개인별 일정 관리
<br>

## 📅 WBS

🔗 <a href="https://docs.google.com/spreadsheets/d/1t4HdLfTOnScKb9n-gGkM4NVxvhieuCJ2Qb8384PqUuM/edit?gid=0#gid=0"> WBS 자세히 보기 </a>

<img src = "https://cdn.discordapp.com/attachments/1326093292256890966/1330104868257529856/image.png?ex=678cc430&is=678b72b0&hm=54e4ad457a93c625b3e0ab3510b75907e7823a3c2d1ba9440002e24d8095e1d5&" width = "1000"> </img> 
<br><br>

## 🙆‍♀️ 요구사항 명세서

🔗 <a href="https://docs.google.com/spreadsheets/d/1t4HdLfTOnScKb9n-gGkM4NVxvhieuCJ2Qb8384PqUuM/edit?gid=1669757998#gid=1669757998"> 요구사항 명세 자세히 보기 </a>

<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%EB%AA%85%EC%84%B8%EC%84%9C/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%EB%AA%85%EC%84%B8%EC%84%9C.png?raw=true" width = "900"> </img>
<br><br>

## 🗃️ DB 모델링
### 1. 개념 모델링
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EA%B0%9C%EB%85%90%EB%AA%A8%EB%8D%B8%EB%A7%81/%EA%B0%9C%EB%85%90%EB%AA%A8%EB%8D%B8%EB%A7%81.png?raw=true" width = "700"> </img>
<br>

### 2. 논리 모델링
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%85%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/%EB%85%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81.png?raw=true" width = "1000"> </img>
<br>

### 3. 물리 모델링

🔗 <a href="https://docs.google.com/spreadsheets/d/1t4HdLfTOnScKb9n-gGkM4NVxvhieuCJ2Qb8384PqUuM/edit?gid=2141089571#gid=2141089571"> 구조 자세히 보기 </a>

<img src = "https://i.ibb.co/Gx6wDyF/image.png" width = "500"> </img> <br>

#### 전체 구조
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81.png?raw=true" width = "700"> </img> <br>

<details>
<summary><b>세부 구조</b></summary>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/002.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/003.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/004.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/005.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/006.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/007.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/008.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/009.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/010.png?raw=true" width = "350"> </img>
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%EB%AC%BC%EB%A6%AC%EB%AA%A8%EB%8D%B8%EB%A7%81/011.png?raw=true" width = "350"> </img>
</details>
<br>

## 🪄 DDL
<details>
    <summary><b>데이터베이스 생성</b></summary>
    
```sql
CREATE DATABASE everybootcamp;
```
</details>


<details>
    <summary><b>테이블 생성</b></summary>
  <details>
    <summary> 회원 관련 테이블 </summary>
      
```sql
-- 기수 테이블
CREATE TABLE IF NOT EXISTS CARDINAL (
    cardinal_id INTEGER NOT NULL PRIMARY KEY COMMENT '기수 ID'
);

-- 회원 테이블
CREATE TABLE IF NOT EXISTS MEMBER (
    member_id INTEGER AUTO_INCREMENT NOT NULL COMMENT '회원 ID' PRIMARY KEY, 
    member_email VARCHAR(255) NOT NULL UNIQUE COMMENT '회원 이메일',
    member_pw VARCHAR(255) NOT NULL COMMENT '회원 비밀번호',
    member_name VARCHAR(255) NOT NULL COMMENT '회원 이름',
    member_no VARCHAR(255) NOT NULL COMMENT '회원 주민등록번호',
    member_pnum VARCHAR(255) NOT NULL COMMENT '회원 전화번호',
    member_photo VARCHAR(255) COMMENT '회원 프로필사진',
    member_leave_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '탈퇴 여부' CHECK(member_blocklist_yn IN ('y', 'n')),
	member_cmplt_yn CHAR(4) NOT NULL COMMENT '수료 여부'CHECK(member_cmplt_yn IN ('y', 'n')),
    member_entry_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '허가 여부' CHECK(member_entry_yn IN ('y', 'n')),
    member_report INTEGER NOT NULL DEFAULT 0 COMMENT '신고 당한 횟수',
    member_blocklist_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '블랙리스트 여부' CHECK(member_blocklist_yn IN ('y', 'n')),
    member_blocklist_date DATETIME COMMENT '블랙리스트 등록 날짜',
    member_cardinal_id INTEGER NOT NULL COMMENT '기수 ID',
    FOREIGN KEY (member_cardinal_id)
	 REFERENCES CARDINAL (cardinal_id)
);
```
  </details>
  
<details>
    <summary> 게시판 관련 테이블 </summary>
      
```sql
-- 자유 게시판 테이블
CREATE TABLE IF NOT EXISTS BASIC_BOARD (
    basic_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '자유 게시글 ID',
    basic_title VARCHAR(255) NOT NULL COMMENT '게시글 제목',
    basic_content VARCHAR(255) NOT NULL COMMENT '게시글 내용',
    basic_date DATETIME NOT NULL COMMENT '작성 날짜',
    basic_view INTEGER NOT NULL DEFAULT 0 COMMENT '조회수',
    basic_file_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '파일 첨부 여부' CHECK(basic_file_yn IN ('y', 'n')),
    basic_anonym_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(basic_anonym_yn IN ('y', 'n')),
    basic_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(basic_erase_yn IN ('y', 'n')),
    basic_writer INTEGER NOT NULL COMMENT '작성자 ID',
    FOREIGN KEY (basic_writer)
	 REFERENCES MEMBER (member_id)
);

-- 취업 정보 게시판 테이블
CREATE TABLE IF NOT EXISTS EMP_INFO_BOARD (
    emp_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '취업 정보 게시글 ID', 
    emp_title VARCHAR(255) NOT NULL COMMENT '게시글 제목',
    emp_content VARCHAR(255) NOT NULL COMMENT '게시글 내용',
    emp_date DATETIME NOT NULL COMMENT '작성 날짜',
    emp_view INTEGER NOT NULL DEFAULT 0 COMMENT '조회수',
    emp_anonym_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(emp_anonym_yn IN ('y', 'n')) ,
    emp_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(emp_erase_yn IN ('y', 'n')) ,
    emp_writer INTEGER NOT NULL COMMENT '작성자 ID',
    FOREIGN KEY (emp_writer)
    REFERENCES member(member_id)
);

-- 스터디 모집 게시판 테이블
CREATE TABLE IF NOT EXISTS STUDY_BOARD (
    study_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '스터디 모집 게시글 ID',
    study_title VARCHAR(255) NOT NULL COMMENT '게시글 제목',
    study_content VARCHAR(255) NOT NULL COMMENT '게시글 내용',
    study_date DATETIME NOT NULL COMMENT '작성 날짜',
    study_view INTEGER NOT NULL DEFAULT 0 COMMENT '조회수',
    study_complete_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '모집 완료 여부' CHECK(study_complete_yn IN ('y', 'n')),
    study_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(study_erase_yn IN ('y', 'n')),
    study_writer INTEGER NOT NULL COMMENT '작성자 ID',
    FOREIGN KEY (study_writer)
    REFERENCES member(member_id)
);
```
  </details>

<details>
    <summary> 댓글 관련 테이블 </summary>
      
```sql
-- 자유 게시글 댓글
CREATE TABLE IF NOT EXISTS BASIC_CMT (
    basic_cmt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '댓글 ID',
    basic_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    basic_cmt_date DATETIME NOT NULL COMMENT '작성 날짜',
    basic_cmt_anonym_yn CHAR(4) DEFAULT 'n' COMMENT '익명 여부' CHECK(basic_cmt_anonym_yn IN ('y', 'n')),
    basic_cmt_erase_yn CHAR(4) DEFAULT 'n' COMMENT '삭제 여부' CHECK(basic_cmt_erase_yn IN ('y', 'n')),
    basic_post_id INTEGER NOT NULL COMMENT '자유게시글 ID',
    basic_cmt_writer INTEGER NOT NULL COMMENT '댓글 작성자 ID',
    ref_basic_cmt_id INTEGER COMMENT '대댓글용 참조 댓글 ID',
    FOREIGN KEY (basic_post_id)
    REFERENCES basic_board(basic_id),
    FOREIGN KEY (basic_cmt_writer)
    REFERENCES member(member_id),
    FOREIGN KEY (ref_basic_cmt_id)
    REFERENCES BASIC_CMT(basic_cmt_id)
);

-- 취업 정보 게시글 댓글
CREATE TABLE IF NOT EXISTS EMP_INFO_CMT (
    emp_cmt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '댓글 ID',
    emp_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    emp_cmt_date DATETIME NOT NULL COMMENT '작성 날짜',
    emp_cmt_anonym_yn CHAR(4) DEFAULT 'n' COMMENT '익명 여부' CHECK(emp_cmt_anonym_yn IN ('y', 'n')),
    emp_cmt_erase_yn CHAR(4) DEFAULT 'n' COMMENT '삭제 여부' CHECK(emp_cmt_erase_yn IN ('y', 'n')),
    emp_post_id INTEGER NOT NULL COMMENT '취업 정보 게시글 id',
    emp_cmt_writer INTEGER NOT NULL COMMENT '취업 정보 댓글 작성자',
    ref_emp_cmt_id INTEGER COMMENT '대댓글용 참조 댓글 ID',
    FOREIGN KEY (emp_post_id)
    REFERENCES EMP_INFO_BOARD(emp_id),
    FOREIGN KEY (emp_cmt_writer)
    REFERENCES member(member_id),
    FOREIGN KEY (ref_emp_cmt_id)
    REFERENCES EMP_INFO_CMT(emp_cmt_id)
);

-- 스터디 모집 게시글 댓글
CREATE TABLE IF NOT EXISTS STUDY_CMT (
    study_cmt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '스터디 모집 댓글 ID',
    study_cmt_content VARCHAR(255) NOT NULL COMMENT ' 댓글 내용',
    study_cmt_date DATETIME NOT NULL COMMENT '작성 날짜',
    study_cmt_anonym_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(study_cmt_anonym_yn IN ('y', 'n')),
    study_cmt_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(study_cmt_erase_yn IN ('y', 'n')),
    study_post_id INTEGER NOT NULL COMMENT '스터디 모집 게시글 id',
    study_cmt_writer INTEGER NOT NULL COMMENT '스터디 모집 댓글 작성자',
    ref_study_cmt_id INTEGER COMMENT '대댓글용 참조 댓글 ID',
    FOREIGN KEY (study_post_id)
    REFERENCES STUDY_BOARD(study_id),
    FOREIGN KEY (study_cmt_writer)
    REFERENCES member(member_id),
    FOREIGN KEY (ref_study_cmt_id)
    REFERENCES STUDY_CMT(study_cmt_id)
);
```
  </details>

<details>
    <summary> 북마크 테이블 </summary>
      
```sql
CREATE TABLE IF NOT EXISTS BOOKMARK (
    bookmark_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT '북마크 ID',
    member_id INTEGER NOT NULL COMMENT '회원 ID',
    basic_bm_id INTEGER COMMENT '자유 게시글 ID',
    emp_bm_id INTEGER COMMENT '취업 정보 게시글 ID',
    study_bm_id INTEGER COMMENT '스터디 게시글 ID',
    FOREIGN KEY (member_id)
    REFERENCES member(member_id),
	 FOREIGN KEY (basic_bm_id)
    REFERENCES BASIC_BOARD(basic_id),
    FOREIGN KEY (emp_bm_id)
    REFERENCES EMP_INFO_BOARD(emp_id),
    FOREIGN KEY (study_bm_id)
    REFERENCES STUDY_BOARD(study_id)
);
```
  </details>

<details>
    <summary> 파일 테이블 </summary>
      
```sql
CREATE TABLE IF NOT EXISTS BASIC_UPLOAD_FILE (
    basic_file_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '파일 ID',
    basic_origin_file_name VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',
    basic_mdf_file_name VARCHAR(255) NOT NULL COMMENT '수정된 파일 이름',
    basic_file_extension VARCHAR(255) NOT NULL COMMENT '파일 확장자',
    basic_post_id INTEGER NOT NULL COMMENT '자유 게시글 ID',
    FOREIGN KEY (basic_post_id)
    REFERENCES BASIC_BOARD(basic_id)
);
```
  </details>

<details>
    <summary> 신고 관련 테이블 </summary>
      
```sql
-- 신고 사유 테이블
CREATE TABLE IF NOT EXISTS REPORT_REASON (
    rpt_reason_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT '신고 사유 ID',
    rpt_reason_content VARCHAR(255) NOT NULL COMMENT '신고 사유 내용'
);

-- 자유 게시판 신고 테이블
CREATE TABLE IF NOT EXISTS BASIC_REPORT (
    basic_rpt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '신고 ID',
    basic_rpt_date DATETIME NOT NULL COMMENT '신고 날짜',
    basic_rpt_reason_id INTEGER NOT NULL COMMENT '신고 사유 ID',
    basic_rpt_member_id INTEGER NOT NULL COMMENT '신고자 ID',
    basic_post_id INTEGER NULL COMMENT '신고된 게시글 ID',
    basic_cmt_id INTEGER NULL COMMENT '신고된 댓글 ID',
    FOREIGN KEY (basic_rpt_reason_id)
    REFERENCES report_reason(rpt_reason_id),
    FOREIGN KEY (basic_rpt_member_id)
    REFERENCES member(member_id),
    FOREIGN KEY (basic_post_id)
    REFERENCES basic_board(basic_id),
    FOREIGN KEY (basic_cmt_id)
    REFERENCES basic_cmt(basic_cmt_id)
);

-- 취업 정보 게시판 신고 테이블
CREATE TABLE IF NOT EXISTS EMP_INFO_REPORT (
    emp_rpt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '신고 ID',
    emp_rpt_date DATETIME NOT NULL COMMENT '신고 날짜',
    emp_rpt_reason_id INTEGER NOT NULL COMMENT '신고 사유 ID',
    emp_rpt_member_id INTEGER NOT NULL COMMENT '신고자 ID',
    emp_post_id INTEGER NULL COMMENT '게시글 ID',
    emp_cmt_id INTEGER NULL COMMENT '댓글 ID',
	 FOREIGN KEY (emp_rpt_reason_id)
    REFERENCES report_reason(rpt_reason_id),
    FOREIGN KEY (emp_rpt_member_id)
    REFERENCES member(member_id),
    FOREIGN KEY (emp_post_id)
    REFERENCES emp_info_board(emp_id),
    FOREIGN KEY (emp_cmt_id)
	 REFERENCES EMP_INFO_CMT(emp_cmt_id)
);

-- 스터디 모집 게시판 신고 테이블
CREATE TABLE IF NOT EXISTS STUDY_REPORT (
    study_rpt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '신고 ID',
    study_rpt_date DATETIME NOT NULL COMMENT '신고 날짜',
    study_rpt_reason_id INTEGER NOT NULL COMMENT '신고 사유 ID',
    study_rpt_member_id INTEGER NOT NULL COMMENT '신고자 ID',
    study_post_id INTEGER NULL COMMENT '게시글 ID',
    study_cmt_id INTEGER NULL COMMENT '댓글 ID',
    FOREIGN KEY (study_rpt_reason_id)
    REFERENCES report_reason(rpt_reason_id),
    FOREIGN KEY (study_rpt_member_id)
    REFERENCES member(member_id),
    FOREIGN KEY (study_post_id)
    REFERENCES study_board(study_id),
    FOREIGN KEY (study_cmt_id)
    REFERENCES study_cmt(study_cmt_id)
);

-- 블록리스트 테이
CREATE TABLE IF NOT EXISTS BLOCKLIST (
    blc_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '블록리스트 ID',
    blc_date DATETIME NOT NULL COMMENT '블록 날짜',
    blc_reason VARCHAR(255) NOT NULL COMMENT '블록 사유',
    blc_action VARCHAR(255) NOT NULL COMMENT '조치 내역',
    blc_member_id INTEGER NOT NULL COMMENT '블록 회원 ID',
    FOREIGN KEY (blc_member_id)
    REFERENCES member (member_id)
);

```
  </details>

<details>
    <summary> 스터디 페이지 관련 테이블 </summary>
      
```sql
-- 스터디 페이지 테이블
CREATE TABLE IF NOT EXISTS STUDY_PAGE (
    study_page_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '스터디 페이지 ID',
    study_page_title VARCHAR(255) NOT NULL COMMENT '페이지 제목',
    study_post_id INTEGER NOT NULL COMMENT '게시글 ID',
    FOREIGN KEY (study_post_id)
    REFERENCES study_board(study_id)
);

-- 스터디 별 참여자 테이블
CREATE TABLE IF NOT EXISTS STUDY_PARTICIPANT (
    study_page_id INTEGER NOT NULL COMMENT '스터디 페이지 ID',
    study_ptcp_id INTEGER NOT NULL COMMENT '참가자 ID',
    PRIMARY KEY(study_page_id, study_ptcp_id),
    FOREIGN KEY (study_page_id)
	 REFERENCES STUDY_PAGE (study_page_id),
	 FOREIGN KEY (study_ptcp_id)
	 REFERENCES member (member_id)
);

```
  </details>

<details>
    <summary> 멘토링 관련 테이블 </summary>
      
```sql
-- 멘토방 테이블
CREATE TABLE IF NOT EXISTS MENTORING (
    mtr_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '멘토방 ID',
    mentor_id INTEGER NOT NULL COMMENT '멘토 ID',
    FOREIGN KEY (mentor_id)
    REFERENCES member(member_id)
);

-- 멘토방 별 멘티 테이블
CREATE TABLE IF NOT EXISTS MENTEE_FROM_MENTORING (
    mfr_id INTEGER NOT NULL COMMENT '멘토방 ID',
    menti_id INTEGER NOT NULL COMMENT '멘티 ID',
    mfr_accept_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '멘토링 수락 여부' CHECK(mfr_accept_yn IN ('y', 'n')),
    PRIMARY KEY(mfr_id, menti_id),
    FOREIGN KEY (mfr_id)
    REFERENCES MENTORING(mtr_id),
    FOREIGN KEY (menti_id)
    REFERENCES member(member_id)
);
```
  </details>
  
<details>
    <summary> 일정 관련 테이블 </summary>
      
```sql
-- 개인 일정 테이블
CREATE TABLE IF NOT EXISTS PERSONAL_SCHEDULE (
    psn_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '개인 일정 ID',
    psn_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    psn_schedule_start_date DATETIME NOT NULL COMMENT '일정 시작 날짜',
    psn_schedule_end_date DATETIME NOT NULL COMMENT '일정 종료 날짜',
    psn_schedule_member_id INTEGER NOT NULL COMMENT '회원 ID',
    FOREIGN KEY (psn_schedule_member_id)
    REFERENCES member(member_id)
);

-- 공유 일정 테이블
CREATE TABLE IF NOT EXISTS SHARED_SCHEDULE (
    sh_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '공유 일정 ID',
    sh_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    sh_schedule_start_date DATETIME NOT NULL COMMENT '일정 시작 날짜',
    sh_schedule_end_date DATETIME NOT NULL COMMENT '일정 종료 날짜',
    cardinal_id INTEGER NOT NULL COMMENT '기수 ID',
    FOREIGN KEY (cardinal_id)
    REFERENCES CARDINAL(cardinal_id)
);

-- 멘토링 일정 테이블
CREATE TABLE IF NOT EXISTS MENTOR_SCHEDULE (
    mt_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '멘토 일정 ID',
    mt_schedule_start_date DATETIME NOT NULL COMMENT '멘토링 시작 날짜',
    mt_schedule_end_date DATETIME NOT NULL COMMENT '멘토링 종료 날짜',
    mtr_id INTEGER NOT NULL COMMENT '멘토방 ID',
    FOREIGN KEY (mtr_id)
    REFERENCES MENTORING(mtr_id)
);
```
  </details>
  
</details>
<br>

## 🧲 Replication
### - Replication이란
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/Replication/replication.png?raw=true" width = "900"> </img> <br>
MySQL 또는 MariaDB는 Replication을 제공합니다. <br> <br>
Replication이란 DB를 복제하는 것으로 2대 이상의 DBMS를 master와 slave(또는 다중 slave) 구조로 나누어 <b>비동기 복제 방식으로 데이터를 저장하는 것</b>을 뜻합니다. <br> <br>
master는 server-id를 1번으로 가지고 slave는 server-id를 2번 이상부터 가지게 되며 서로 고유하게 부여하여 작동 시켜야 합니다.

### - Replication의 장점
<pre>
1. DB 서버의 부하를 분산시킬 수 있다.
2. 데이터 백업이 실시간으로 이루어진다.
</pre>
> <b>master 서버</b><br>: 데이터의 변경에 대한 처리를 담당하며 변경 발생시 binary log에 기록하고 slave 서버로 전달한다. <br> <br>
> <b>slave 서버</b><br>: master 서버로부터 전달 받은 binary log를 통해 DB에 반영하고 조회의 부담을 담당한다. <br> <br>
> <b>binary log</b><br>: DB에서 발생하는 모든 내역이 기록되는 파일로 default는 비활성이지만 활성화 시켜 활용할 수 있다. <br>

### - master-slave 연동
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/Replication/master_slave%20%EC%97%B0%EB%8F%99%20%ED%99%94%EB%A9%B4.png?raw=true" width="600"> </img> <br>

### - heidiSQL에 master-slave 연동
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/Replication/heidiSQL%20master,%20slave%20%EC%84%9C%EB%B2%84%20%EC%97%B0%EB%8F%99.png?raw=true" width="600"> </img> <br>

### - master-slave 동기화
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Server/master_slave_db_%EC%83%9D%EC%84%B1.gif?raw=true" width="600"> </img> <br>
    
### - slave에서 read-only 옵션 확인
<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Server/slave_read_only_%EC%98%B5%EC%85%98_%ED%99%95%EC%9D%B8.gif?raw=true" width="600"> </img> <br>
<br>

## 💡 TEST CASE 정의서

🔗 <a href="https://docs.google.com/spreadsheets/d/1t4HdLfTOnScKb9n-gGkM4NVxvhieuCJ2Qb8384PqUuM/edit?gid=1861502503#gid=1861502503"> 테스트케이스 정의서 자세히 보기 </a>

<img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/PNG/%ED%85%8C%EC%8A%A4%ED%8A%B8%EC%BC%80%EC%9D%B4%EC%8A%A4%20%EC%A0%95%EC%9D%98%EC%84%9C/%ED%85%8C%EC%8A%A4%ED%8A%B8%EC%BC%80%EC%9D%B4%EC%8A%A4%20%EC%A0%95%EC%9D%98%EC%84%9C.png?raw=true" width = "100%"> </img> <br>

<br>

## 💡 TEST CASE 시연
### 🎈 QUERY
<details>
<summary><b>회원</b></summary>
  <details>
    <summary> 회원가입 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-001_%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 로그인 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-002_%EB%A1%9C%EA%B7%B8%EC%9D%B8.gif?raw=true" width="600"> </img> 
  </details>

  <details>
    <summary> 가입 허가 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-004_%EA%B0%80%EC%9E%85%ED%97%88%EA%B0%80.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 회원 탈퇴 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-005_%ED%9A%8C%EC%9B%90%ED%83%88%ED%87%B4.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 회원 정보 수정 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-006_%ED%9A%8C%EC%9B%90%EC%A0%95%EB%B3%B4%EC%88%98%EC%A0%95.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 수료 여부 확인 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-007_%EC%88%98%EB%A3%8C%EC%97%AC%EB%B6%80%ED%99%95%EC%9D%B8%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 이메일 찾기 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-008_%EC%9D%B4%EB%A9%94%EC%9D%BC%EC%B0%BE%EA%B8%B0.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 비밀번호 찾기 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-009_%EB%B9%84%EB%B0%80%EB%B2%88%ED%98%B8%20%EC%B0%BE%EA%B8%B0.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 신고 내역 확인 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-010_%EC%8B%A0%EA%B3%A0%EB%82%B4%EC%97%AD%ED%99%95%EC%9D%B8.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 회원 블록리스트 등록 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-011_%ED%9A%8C%EC%9B%90%20%EB%B8%94%EB%A1%9D%20%EB%A6%AC%EC%8A%A4%ED%8A%B8%20%EB%93%B1%EB%A1%9D.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 회원 블록리스트 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-012_%ED%9A%8C%EC%9B%90%20%EB%B8%94%EB%A1%9D%20%EB%A6%AC%EC%8A%A4%ED%8A%B8%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 작성 게시글 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-013_%EC%9E%91%EC%84%B1%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%A1%B0%ED%9A%8C%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 북마크 목록 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-014_%EB%B6%81%EB%A7%88%ED%81%AC%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 북마크 목록 삭제 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-015_%EB%B6%81%EB%A7%88%ED%81%AC%20%EB%AA%A9%EB%A1%9D%20%EC%82%AD%EC%A0%9C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 참여 스터디 목록 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-016_%EC%B0%B8%EC%97%AC%20%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 참여 멘토링 목록 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%ED%9A%8C%EC%9B%90/TEST-017_%EC%B0%B8%EC%97%AC%20%EB%A9%98%ED%86%A0%EB%A7%81%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>
</details>

<details>
  <summary> <b>자유게시판</b></summary>
  <details><summary> 자유 게시글 목록</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-018_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true ", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-019_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-020_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-021_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-022_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 검색</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-023_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EA%B2%80%EC%83%89.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 댓글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-024_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 댓글 목록 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-025_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 댓글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-026_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 댓글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-027_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-028_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 자유 게시글 댓글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-029_%EC%9E%90%EC%9C%A0%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
</details>

<details>
  <summary><b>취업 정보 게시판</b></summary>
  <details><summary>취업 정보 게시글 목록 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-048_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-049_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-050_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-051_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-052_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 검색</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-053_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EA%B2%80%EC%83%89.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 북마크 등록</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-054_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%B6%81%EB%A7%88%ED%81%AC%20%EB%93%B1%EB%A1%9D.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 북마크 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-055_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%B6%81%EB%A7%88%ED%81%AC%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 댓글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-056_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 댓글 목록 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-057_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 댓글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-058_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 댓글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-059_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-060_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
  <details><summary>취업 정보 게시글 댓글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-061_%EC%B7%A8%EC%97%85%20%EC%A0%95%EB%B3%B4%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
</details>

<details>
  <summary><b>멘토링</b></summary>
  <details><summary> 멘토링 등록</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-062_%EB%A9%98%ED%86%A0%EB%A7%81%20%EB%93%B1%EB%A1%9D.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 목록</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-063_%EB%A9%98%ED%86%A0%EB%B0%A9%20%EB%AA%A9%EB%A1%9D.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-064_%EB%A9%98%ED%86%A0%EB%B0%A9%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 신청</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-065_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%8B%A0%EC%B2%AD.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 요청 수락</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-066_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%9A%94%EC%B2%AD%20%EC%88%98%EB%9D%BD.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 취소</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-067_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%B7%A8%EC%86%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 멘토링 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EB%A9%98%ED%86%A0%EB%A7%81/TEST-068_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
 </details>

<details>
  <summary><b>스터디 모집 게시판</b> </summary>
  <details><summary> 스터디 모집 게시글 목록 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-032_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-033_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-034_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-035_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-036_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 검색</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-037_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EA%B2%80%EC%83%89.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 페이지 개설</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-038_%EC%8A%A4%ED%84%B0%EB%94%94%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%EA%B0%9C%EC%84%A4.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 요청 수락</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-039_%EC%8A%A4%ED%84%B0%EB%94%94%20%EC%9A%94%EC%B2%AD%20%EC%88%98%EB%9D%BD.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 마감 설정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-041_%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%A7%88%EA%B0%90%20%EC%84%A4%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-042_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 댓글 신고</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-043_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%8B%A0%EA%B3%A0.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 댓글 작성</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-044_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%9E%91%EC%84%B1.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 댓글 목록 조회</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-045_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EB%AA%A9%EB%A1%9D%20%EC%A1%B0%ED%9A%8C.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 댓글 수정</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-046_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%88%98%EC%A0%95.gif?raw=true", width="600"> </img>
  </details>
  <details><summary> 스터디 모집 게시글 댓글 삭제</summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%8A%A4%ED%84%B0%EB%94%94%20%EB%AA%A8%EC%A7%91%20%EA%B2%8C%EC%8B%9C%ED%8C%90/TEST-047_%EC%8A%A4%ED%84%B0%EB%94%94%20%EA%B2%8C%EC%8B%9C%EA%B8%80%20%EB%8C%93%EA%B8%80%20%EC%82%AD%EC%A0%9C.gif?raw=true", width="600"> </img>
  </details>
</details>

<details>
<summary><b>일정</b></summary>
  <details>
    <summary> 공식 일정 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-116_%EA%B3%B5%EC%8B%9D%20%EC%9D%BC%EC%A0%95%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 공식 일정 검색 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-117_%EA%B3%B5%EC%8B%9D%20%EC%9D%BC%EC%A0%95%20%EA%B2%80%EC%83%89%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 공식 일정 작성 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-118_%EA%B3%B5%EC%8B%9D%20%EC%9D%BC%EC%A0%95%20%EC%9E%91%EC%84%B1.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 공식 일정 삭제 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-119_%EA%B3%B5%EC%8B%9D%20%EC%9D%BC%EC%A0%95%20%EC%82%AD%EC%A0%9C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 공식 일정 수정 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-120_%EA%B3%B5%EC%8B%9D%20%EC%9D%BC%EC%A0%95%20%EC%88%98%EC%A0%95%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 개인 일정 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-121_%EA%B0%9C%EC%9D%B8%20%EC%9D%BC%EC%A0%95%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 개인 일정 검색 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-122_%EA%B0%9C%EC%9D%B8%20%EC%9D%BC%EC%A0%95%20%EA%B2%80%EC%83%89.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 개인 일정 작성 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-123_%EA%B0%9C%EC%9D%B8%20%EC%9D%BC%EC%A0%95%20%EC%9E%91%EC%84%B1%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 개인 일정 삭제 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-124_%EA%B0%9C%EC%9D%B8%20%EC%9D%BC%EC%A0%95%20%EC%82%AD%EC%A0%9C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 개인 일정 수정 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-125_%EA%B0%9C%EC%9D%B8%20%EC%9D%BC%EC%A0%95%20%EC%88%98%EC%A0%95%20.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 멘토링 일정 조회 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-126_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%9D%BC%EC%A0%95%20%EC%A1%B0%ED%9A%8C.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 멘토링 일정 검색 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-127_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%9D%BC%EC%A0%95%20%EA%B2%80%EC%83%89.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 멘토링 일정 작성 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-128_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%9D%BC%EC%A0%95%20%EC%9E%91%EC%84%B1.gif?raw=true" width="600"> </img>
  </details>

  <details>
    <summary> 멘토링 일정 삭제 </summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/%EC%9D%BC%EC%A0%95%ED%91%9C/TEST-129_%EB%A9%98%ED%86%A0%EB%A7%81%20%EC%9D%BC%EC%A0%95%20%EC%82%AD%EC%A0%9C.gif?raw=true" width="600"> </img>
  </details>
</details>


### 🎈 TRIGGER
<details>
  <summary><b>자유 게시글 파일 테이블에 파일 추가 시 게시글에 파일 첨부 표시</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Object/trigger_basic_file.gif?raw=true", width="600"> </img>
</details>

<details>
  <summary><b>신고 5번 누적 시 블락리스트 추가</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Object/%EC%8B%A0%EA%B3%A0%205%EB%B2%88%EC%8B%9C%20%EB%B8%94%EB%9D%BD%EB%A6%AC%EC%8A%A4%ED%8A%B8.gif?raw=true", width="600"> </img>
</details>

### 🎈 INDEX
  <details>
	  <summary><b>게시판 인덱스</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Object/index.gif?raw=true", width="600"> </img>
  </details>

### 🎈 PROCEDURE
  <details>
	  <summary><b>게시글 조회 시 조회수 1 증가</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Object/procedure_view_increase_basic.gif?raw=true", width="600"> </img>
  </details>

### 🎈 CONSTRAINTS
<details>
  <summary><b>NOT NULL</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Constraint/not_null.gif?raw=true", width="600"> </img>
</details>

<details>
  <summary><b>CHECK</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Constraint/check.gif?raw=true", width="600"> </img>
</details>

<details>
  <summary><b>DATA TYPE</b></summary>
    <img src = "https://github.com/beyond-SW-Camp-14th-5rE5/EveryBootCamp/blob/main/%ED%8C%8C%EC%9D%BC/GIF/Constraint/data_type.gif?raw=true", width="600"> </img>
</details>

<br>

## 🔜 향후 확장 계획

`#도서 대여 시스템 구축` `#코딩 문제 풀이 게시판` `#맛집 추천 기능` `#쪽지 시스템` `#스터디별 일정 캘린더 통합` `#스터디 공간 예약 시스템` `#게시판 내 MBTI 뱃지 표시`

<br>

# 🍪 동료 평가
### 🐔 강수지
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>고윤석</td>
    <td> 현업에서 일했던 경험을 바탕으로 유지 보수 측면에서 팀원들의 코드가 문제를 일으키는 경우 해결하는데 많은 역할을 하였음. 쿼리문으로 테스트케이스를 할 때 티가 나지 않는 부분에서도 반복적인 작업을 맡아서 하면서도 묵묵히 자기 역할을 다했음. 팀원들과의 관계에서도 윤활제 역할을 함. 개인적으로 도움을 많이 받은 고마운 팀원.</td>
  </tr>
  <tr>
    <td>곽우석</td>
    <td>수지님도 되게 어른이세요. 항상 밝은 모습이시고 남 생각 많이 하시는게 말과 행동에서 잘 드러나세요. 되게 좋으신 분이십니다. 프로젝트 활동때 막히는 부분에 대해서 쉽게 처리하시는 모습이 굉장히 멋져보였습니다.</td>
  </tr>
  <tr>
    <td>김석희</td>
    <td>SQL 문법 오류도 잘 찾아주시고, 기획적으로 잘못된 방향으로 갈 때도 적극적으로 의견을 제시해주셔서 수지님 덕분에 프로젝트를 무사히 마무리할 수 있었습니다. 다른 팀원이 짠 코드도 잘 해석해주시고 필요한 추가 작업도 먼저 나서서 해주셨습니다. 매일 핫팩과 간식을 사주셔서 덕분에 따뜻한 겨울을 보낼 수 있었습니다❤️
    </td>
  </tr>
  <tr>
    <td>김성민</td>
    <td>항상 제가 미처 생각하지 못한 곳에서 좋은 아이디어를 제안하고, 날카로운 질문을 통해 프로젝트의 질을 끌어 올려 주었습니다. 게다가, 맡은 일을 너무 잘해주셔서 한층 더 좋은 결과를 얻을 수 있었던 것 같아요.</td>
  </tr>
  <tr>
    <td>최혜민</td>
    <td>꼼꼼하게 다른 팀원들이 놓치는 부분을 빠르게 캐치해주었다. 작은 디테일까지 세세하게 신경써주어 실수를 많이 줄일 수 있었다. 또 마지막까지 부족한 자료를 보충해주셨다.</td>
  </tr>
</table>


### 🐑 고윤석
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>강수지</td>
    <td>매번 아이디어를 내 주시고, 팀 회의에 적극적으로 참여해 주시고, 모델링부터 꼼꼼하게 신경 써 주셔서 프로젝트가 잘 진행되었던 것 같습니다. 의견을 많이 내 주신 덕분에 한층 풍부한 프로젝트를 진행할 수 있었던 것 같고, 진행하는 과정에서도 배우려는 의지가 보여서 좋았습니다.</td>
  </tr>
  <tr>
    <td>곽우석</td>
    <td>윤석님은 되게 어른같으십니다. 누군가를 챙기시는게 익숙해보이시며 마음이 따뜻한 분이신게 티가 나세요. 덕분에 많은 힘이 되었습니다. 팀프로젝트 과정에서도 매우 열정적으로 참여하셔서 아이디어를 내시고 그 모습을 보고 많은 자극이 되었습니다. 발표도 되게 잘하세요 ㅎ</td>
  </tr>
  <tr>
    <td>김석희</td>
    <td>항상 좋은 아이디어를 내주시고 저희가 미처 생각하지 못한 부분들을 잘 발견해주셔서 프로젝트가 더 탄탄한 방향으로 나아갈 수 있었습니다. 모든 상황에 적극적으로 임해주시고 바쁜 주말에도 프로젝트를 꼼꼼히 확인해주셨습니다. 발표도 잔뜩 잘해주셔서 프로젝트를 더 잘 마무리할 수 있었습니다😊
    </td>
  </tr>
  <tr>
    <td>김성민</td>
    <td>팀원들과의 의견을 잘 조율해주었으며 혼자 맥이라 힘들었을텐데도 자신이 할 수 있는 일에 최선을 다했으며 특히, 발표를 너무 잘해주어서 덕분에 우리들의 노력이 잘 전달된 것 같습니다.</td>
  </tr>
  <tr>
    <td>최혜민</td>
    <td>모두가 주저하던 발표를 맡아주셔서 다른 팀원들의 부담을 덜어주었다. 발표 자료를 철저하게 숙지하고 발표를 매끄럽게 진행하여 프로젝트를 성공적으로 마무리 해주셨다.</td>
  </tr>
</table>

### 🐇 곽우석
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>강수지</td>
    <td>모르는 부분에 대해 계속해서 알려고 하고, 주변에서 힘들거나 어려운 문제에 봉착했을 때마다 어떤 문제인지 물어보고 같이 해결해 주려고 하는 모습이 좋았습니다. 끝까지 해결하려는 자세도 감명 깊었고, 매번 늦게까지 남아서 스스로 부족한 점에 대해 채우려는 모습도 좋았습니다.</td>
  </tr>
  <tr>
    <td>고윤석</td>
    <td>매일 남아서 공부하고 팀 안에서 역할을 다하기 위해서 노력하는 모습이 다른 팀원들에게 좋은 자극이 됨. 이번 프로젝트에서도 이런 적극적인 자세로 티가 나지 않는 부분에서도 묵묵히 자신의 역할을 다하기 위해서 노력하는 모습이 팀에게 좋은 영향을 주었다고 생각함. 매일 남아야하는 힘든 상황 속에서도 팀원들이 재밌게 프로젝트를 준비할 수 있게 만들어 줌. 우리 팀의 분위기 메이커. </td>
  </tr>
  <tr>
    <td>김석희</td>
    <td>팀원들이 모두 집에간 저녁에도 남아서 남은 작업을 마무리해주셔서 프로젝트가 빠르게 진행될 수 있었습니다. 모르는 것을 적극적으로 물어봐주시고 어떤 일이든 가리지 않고 맡아 해결해주셨습니다. 처음 배워 어려운 상황을 마주했을 때도 두려워하지 않고 배우려는 자세로 프로젝트에 진심을 다해 임해주셨습니다👍</td>
  </tr>
  <tr>
    <td>김성민</td>
    <td>항상 팀의 분위기를 밝게 하고 처음 배우는 내용이 많아 힘들 었을 텐데도, 팀에 피해를 주지 않고 도움이 되기 위해 끝까지 최선을 다하는 책임감 있는 모습이 정말 멋있었습니다.</td>
  </tr>
  <tr>
    <td>최혜민</td>
    <td>모르는 부분은 끝까지 공부해서 알아내는 성실함을 보여주었다. 항상 최선을 다하고 맡은 일을 책임지고 처리해주었고 맡은 부분을 다 끝내면 도움이 필요한 팀원들을 도와주었다.</td>
  </tr>
</table>

### 🐰 김석희
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>강수지</td>
    <td>솔선수범해서 팀을 이끌어 주신 석희님! 구상부터 프로젝트 방향성, 진행까지 모두 도맡아서 해 주신 덕분에 일사천리로 빠르고 완성도 높은 결과물이 나올 수 있었던 것 같습니다. 자잘하게 질문을 엄청 많이 했는데 항상 친절하게 답변해 주셔서 감사했습니다. 다음 프로젝트 때 팀명은 ‘김석희 보유했조’ 어때요?</td>
  </tr>
  <tr>
    <td>고윤석</td>
    <td>팀에서 가장 부담되는 부분을 전담하여 계획서 작성부터 ppt, 코드 작성 시 가장 스트레스 받는 부분 중 하나인 조건문 작성, 나머지 팀원들에게 적절한 업무 분배까지 다방면에서 많은 역할을 했음. 다른 팀원들의 아이디어나 추상적인 생각들을 구체화하고 정리, 시각화하여 팀원들이 자신의 역할을 뚜렷하게 정할 수 있도록 도와 이번 프로젝트가 잘 마무리되는 데 큰 역할을 함. 팀원들 사이에서 잘 웃고 잘 듣고 정리해주어 분위기를 편하게 해주며 팀에 꼭 필요한 팀원이라고 생각함.</td>
  </tr>
<tr>
    <td>곽우석</td>
    <td>석희님은 성격이 엄청 밝으시고 활발하셔서 모두와 잘 어울리시는 분입니다. 팀 프로젝트 활동 때 이전 프로젝트들의 경험 때문인지 제가 알기 어려운 부분에 대해서 친절하게 설명해주셔서 너무 감사했습니다. 그리고 되게 똑똑하세요 멋진 청년.</td>
  </tr>
  <tr>
    <td>김성민</td>
    <td>팀의 중심을 잡아주는 역할을 맡으며, 모두가 원활히 협업할 수 있는 환경을 만들어주었습니다. 특히, 팀원들의 강점과 장점을 빠르게 파악해, 각자에게 가장 적합한 역할을 배치하는 모습이 인상 깊었습니다.</td>
  </tr>
  <tr>
    <td>최혜민</td>
    <td>책임감이 강하고 모든 일을 주도적으로 진행해 믿음직스러웠다. 프로젝트 경험이 부족한 팀원들을 이끌면서 힘든 기색없이 끝까지 잘 마무리해주었다. 덕분에 팀워크가 좋아졌고 프로젝트를 탄탄하게 진행할 수 있었다.</td>
  </tr>
</table>

### 🐮 김성민
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>강수지</td>
    <td>주말에도 빠른 피드백을 해 주실 정도로 프로젝트에 열과 성의를 다해 주시고, 먼저 말하지 않아도 스스로 해야 할 업무를 이미 진행하고 있는 추진력과 실행력에 놀랐습니다. 다들 피곤할 텐데 하루 일과가 끝난 후에도 프로젝트 진행 과정을 꼼꼼하게 살펴 다음날 피드백을 주시는 등 성실하게 프로젝트에 임하는 모습을 배워야겠다고 생각했습니다.</td>
<tr>
    <td>고윤석</td>
    <td>보이지 않는 곳에서도 정말 열심히 하는 팀원. 역시 까다로운 업무들을 석희님과 분담해줬고, 티 안나는 부분을 할 때에도 성실히 잘 수행하며 아직 잘 하지 못하는 팀원들 몫까지 조금 더 맡게 되면서 충분히 불만을 가지려면 가질 수 있는 상황인데도 불구하고 든든하게 자기 몫을 다해주었음. 잘 웃고 팀원들이 모르는 부분을 잘 설명해 주어 팀원들이 자신의 역할을 하는데 도움을 줌.</td>
  </tr>
<tr>
   <td>김석희</td>
    <td>주말과 저녁 시간을 할애하여 꼼꼼히 프로젝트를 확인해 오류를 찾아주셨던 성민님 덕분에 프로젝트가 완성도 있게 나올 수 있었습니다. 제일 어려웠던 프로시저와 트리거를 만드는 부분을 묵묵히 수행해주셨으며, 수정사항이 생겨 업무가 늘어났을 때도 성실하게 업무에 임해주셨습니다. 항상 긍정적인 태도로 좋은 에너지를 준 팀원입니다✨</td>
  </tr>
  <tr>
    <td>곽우석</td>
    <td>저의 영원한 짝꿍이신 성민님은 저뿐만 아니라 모두에게 항상 친절하시며 분위기를 밝게 만드시는 분입니다. 함께 지낼 수 있어 즐거웠고 앞으로도 잘 지내보고 싶습니다. 팀 프로젝트 활동 때도 남들이 하기 어렵고 귀찮은 부분에서 솔선수범으로 일을 처리해주셔서 매번 감사했습니다.</td>
  </tr>
  <tr>
    <td>최혜민</td>
    <td>부탁하는 일을 빠르고 확실하게 처리해준 덕분에 프로젝트의 진행 속도가 빨랐다. 프로젝트를 하는 와중에도 복습과 스터디를 병행하며 열정적인 모습을 보여주었다.</td>
  </tr>
</table>

### 🐯 최혜민
<table>
  <tr>
    <td>평가자</td>
    <td align="center">내용</td>
  </tr>
  <tr>
    <td>강수지</td>
    <td>묵묵하게 조용히 해야 할 업무를 빠르게 처리해 주시고, 다른 조원들의 말을 경청해 주시고, 의견을 내야 할 때는 똑부러지게 의견 피력도 해 주셔서 팀원들 간의 밸런스가 잘 맞을 수 있었던 것 같습니다. 팀의 감초 역할을 해 주셔서 분위기도 조화로울 수 있었습니다.</td>
  </tr>
  <tr>
    <td>고윤석</td>
    <td>이번 프로젝트에는 ppt나 엑셀 작업, 기획서 정리, 사진 정리 같은 문서 작업 등을 많이 맡게 되었는데, 맡은 일에 대해서 걱정을 안 해도 될 정도로 확실하게 책임지는 팀원. 불평을 가질 수 있을 만큼 귀찮고 복잡한 일을 하게 되었음에도 자신의 일들 충실히 잘 해주었으며 팀원들과 잘 어울리고, 팀의 분위기에 좋은 영향을 줌.</td>
  </tr>
  <tr>	
    <td>김석희</td>
    <td>요구사항 정리, 테스트 케이스 정리 등 문서 정리와 PPT 작성을 먼저 나서서 도맡아주셔서 프로젝트의 문서화가 굉장히 빨리 끝날 수 있었습니다. 테스트 케이스 관련된 코드를 작성할 때도 빠르게 작업을 마무리하고 다른 팀원의 작업을 도와 프로젝트의 속도를 향상해주었습니다. 팀원들의 말을 경청해주고 필요할 때는 적극적으로 의견도 내주었습니다🥰 </td>
  </tr>
  <tr>
    <td>김성민</td>
    <td>항상 맡은 바 일에 책임을 다해 충실히 수행하며, 프로젝트의 기반을 탄탄히 다져준 팀원이었습니다.</td>
  </tr>
  <tr>
    <td>곽우석</td>
    <td>혜민님은 끝까지 맡은 일에 대해 책임감을 가지시는 분입니다. 장난을 치는데 매우 능통하시고 가끔 제 간식을 뺏어가시지만 하나도 아깝지 않았습니다~! 항상 점심을 시켜주셔서 감사하게 생각합니다.
    </td>
  </tr>
</table>
