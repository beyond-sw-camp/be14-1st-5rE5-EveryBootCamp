-- 중요도 중, 하 테이블 (완성본 X 사용하려면 수정 거쳐야 함)

-- 외래 키 제약 조건을 무시하여 테이블 삭제
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS library;
DROP TABLE IF EXISTS book_info;
DROP TABLE IF EXISTS QUESTION_CATEGORY;
DROP TABLE IF EXISTS QUESTION;
DROP TABLE IF EXISTS MEMBER_QUESTION;
DROP TABLE IF EXISTS message;

-- 외래 키 제약 조건 다시 활성화
SET FOREIGN_KEY_CHECKS = 1;


-- -------------------- < LIBRARY >--------------------
CREATE TABLE IF NOT EXISTS LIBRARY (
    lib_member_id INT NOT NULL COMMENT '회원 ID' PRIMARY KEY,              -- 대출한 회원의 ID (외래 키: MEMBER 테이블 참조)
    lib_book_id INT NOT NULL COMMENT '책 ID',                             -- 대출한 책의 ID (외래 키: BOOK_INFO 테이블 참조)
    lib_start_date DATE NOT NULL COMMENT '대출 시작일',                   -- 대출 시작 날짜
    lib_rental_yn CHAR(4) NOT NULL COMMENT '반납 여부' DEFAULT 'N' CHECK (lib_rental_yn IN ('y', 'n')), -- 반납 여부
    FOREIGN KEY (lib_member_id) REFERENCES MEMBER (member_id),             -- 회원 ID 외래 키 설정
    FOREIGN KEY (lib_book_id) REFERENCES BOOK_INFO (book_id)               -- 책 ID 외래 키 설정
);


-- -------------------- < BOOK_INFO >--------------------
CREATE TABLE IF NOT EXISTS BOOK_INFO (
    book_id INT AUTO_INCREMENT NOT NULL COMMENT '책 ID' PRIMARY KEY,       -- 책 고유 식별자
    book_name VARCHAR(255) NOT NULL COMMENT '책 이름',                     -- 책 이름
    book_author VARCHAR(255) NOT NULL COMMENT '책 저자',                   -- 책 저자
    book_publisher VARCHAR(255) NOT NULL COMMENT '출판사',                 -- 책 출판사
    book_total INTEGER NOT NULL DEFAULT 0 COMMENT '총 권수'                -- 책의 총 권수 (기본값 0)
);


-- -------------------- < QUESTION_CATEGORY >--------------------
CREATE TABLE IF NOT EXISTS QUESTION_CATEGORY (
    qc_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 카테고리 ID' PRIMARY KEY, -- 질문 카테고리 고유 식별자
    qc_name VARCHAR(255) NOT NULL COMMENT '카테고리 이름'                    -- 질문 카테고리 이름
);


-- -------------------- < QUESTION >--------------------
CREATE TABLE IF NOT EXISTS QUESTION (
    qst_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 ID' PRIMARY KEY,             -- 질문 고유 식별자
    qst_title VARCHAR(255) NOT NULL COMMENT '질문 제목',                         -- 질문 제목
    qst_content VARCHAR(255) NOT NULL COMMENT '질문 내용',                       -- 질문 내용
    qst_answer VARCHAR(255) NOT NULL COMMENT '답변',                             -- 질문 답변
    qst_level VARCHAR(255) NOT NULL COMMENT '질문 난이도',                       -- 질문 난이도
    qst_category_id INT NOT NULL COMMENT '카테고리 ID'                           -- 질문 카테고리 ID (외래 키 설정 가능)
);


-- -------------------- < MEMBER_QUESTION >--------------------
CREATE TABLE IF NOT EXISTS MEMBER_QUESTION (
    qst_member_id INT NOT NULL COMMENT '회원 ID',                                -- 질문과 연관된 회원 ID (외래 키: MEMBER 테이블 참조)
    qst_id INT NOT NULL COMMENT '질문 ID',                                      -- 질문 ID (외래 키: QUESTION 테이블 참조)
    qst_cmplt_yn CHAR(4) NOT NULL COMMENT '완료 여부' CHECK(qst_cmplt_yn IN ('y', 'n')), -- 질문 완료 여부
    qst_answer_yn CHAR(4) NOT NULL COMMENT '답변 여부' CHECK(qst_answer_yn IN ('y', 'n')), -- 질문 답변 여부
    PRIMARY KEY(qst_member_id, qst_id),                                         -- 복합 기본 키 설정
    FOREIGN KEY (qst_member_id) REFERENCES MEMBER (member_id),                  -- 회원 ID 외래 키 설정
    FOREIGN KEY (qst_id) REFERENCES QUESTION (qst_id)                           -- 질문 ID 외래 키 설정
);

-- -------------------- < MESSAGE >--------------------
CREATE TABLE IF NOT EXISTS MESSAGE (
    msg_id INT AUTO_INCREMENT NOT NULL COMMENT '메시지 ID' PRIMARY KEY,    -- 메시지 고유 식별자
    msg_content VARCHAR(255) NOT NULL COMMENT '메시지 내용',               -- 메시지 내용
    msg_send_date DATE NOT NULL COMMENT '메시지 전송일',                   -- 메시지 전송 날짜
    msg_sender_id INT NOT NULL COMMENT '보낸 사람 ID',                    -- 메시지 발신자 ID
    msg_rcver_id INT NOT NULL COMMENT '받는 사람 ID'                      -- 메시지 수신자 ID
    FOREIGN KEY (msg_sender_id) REFERENCES member(member_id),
);
