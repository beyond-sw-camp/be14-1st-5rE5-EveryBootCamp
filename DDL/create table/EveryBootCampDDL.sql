-- 외래 키 제약 조건을 무시하여 테이블 삭제
SET FOREIGN_KEY_CHECKS = 0;

-- 기존에 존재하는 테이블을 삭제
DROP TABLE IF EXISTS MEMBER;
DROP TABLE IF EXISTS STUDY_CMT;
DROP TABLE IF EXISTS BOOKMARK;
DROP TABLE IF EXISTS BOOK_INFO;
DROP TABLE IF EXISTS LIBRARY;
DROP TABLE IF EXISTS MESSAGE;
DROP TABLE IF EXISTS PERSONAL_SCHEDULE;
DROP TABLE IF EXISTS QUESTION;
DROP TABLE IF EXISTS MEMBER_QUESTION;
DROP TABLE IF EXISTS BASIC_BOARD;
DROP TABLE IF EXISTS STUDY_BOARD;
DROP TABLE IF EXISTS EMP_INFO_BOARD;
DROP TABLE IF EXISTS SHARED_SCHEDULE;
DROP TABLE IF EXISTS BLOCKLIST;
DROP TABLE IF EXISTS BASIC_CMT;
DROP TABLE IF EXISTS QUESTION_CATEGORY;
DROP TABLE IF EXISTS CARDINAL;
DROP TABLE IF EXISTS BASIC_UPLOAD_FILE;
DROP TABLE IF EXISTS REPORT_REASON;
DROP TABLE IF EXISTS STUDY_PAGE;
DROP TABLE IF EXISTS STUDY_PARTICIPANT;
DROP TABLE IF EXISTS BASIC_REPORT;
DROP TABLE IF EXISTS STUDY_REPORT;
DROP TABLE IF EXISTS EMP_INFO_REPORT;
DROP TABLE IF EXISTS EMP_INFO_COMMENT;
DROP TABLE IF EXISTS MENTORING;
DROP TABLE IF EXISTS MENTOR_SCHEDULE;
DROP TABLE IF EXISTS MENTEE_FROM_MENTORING;

-- 외래 키 제약 조건 다시 활성화
SET FOREIGN_KEY_CHECKS = 1;

-- MEMBER 테이블 생성
CREATE TABLE IF NOT EXISTS MEMBER (
    member_id INT AUTO_INCREMENT NOT NULL COMMENT '회원 ID' PRIMARY KEY, -- 회원 고유 식별자
    member_email VARCHAR(255) NOT NULL COMMENT '회원 이메일',           -- 회원 이메일 (유일해야 할 경우 UNIQUE 제약 조건 추가 가능)
    member_pw VARCHAR(255) NOT NULL COMMENT '회원 비밀번호',           -- 회원 비밀번호
    member_name VARCHAR(255) NOT NULL COMMENT '회원 이름',             -- 회원 이름
    member_no VARCHAR(255) NOT NULL COMMENT '회원 주민등록번호',       -- 회원 주민등록번호 (암호화 필요)
    member_pnum VARCHAR(255) NOT NULL COMMENT '회원 전화번호',         -- 회원 전화번호
    member_photo VARCHAR(255) NULL COMMENT '회원 사진',               -- 회원 프로필 사진 (선택 사항)
    member_cmplt_yn CHAR(4) NOT NULL COMMENT '수료생 여부' CHECK(member_cmplt_yn IN ('y', 'n')), -- 수료 여부 (y: 수료, n: 비수료)
    member_entry_yn CHAR(4) NOT NULL COMMENT '허가 여부' DEFAULT 'n' CHECK(member_entry_yn IN ('y', 'n')), -- 허가 상태 (기본값 n)
    member_blocklist_yn CHAR(4) NOT NULL COMMENT '블랙리스트 여부' CHECK(member_blocklist_yn IN ('y', 'n')), -- 블랙리스트 여부
    member_blocklist_date DATE NULL COMMENT '블랙리스트 등록 날짜',  -- 블랙리스트 등록 날짜 (선택 사항)
    member_cardinal_id INT NOT NULL COMMENT '기수 ID'                -- 기수 식별자 (외래 키 설정 가능)
);

-- STUDY_CMT 테이블 생성
CREATE TABLE IF NOT EXISTS STUDY_CMT (
    study_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 댓글 ID' PRIMARY KEY, -- 댓글 고유 식별자
    study_cmt_content VARCHAR(255) NOT NULL COMMENT '스터디 댓글 내용',          -- 댓글 내용
    study_cmt_date DATE NOT NULL COMMENT '스터디 댓글 작성일',                   -- 댓글 작성일
    study_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',                      -- 익명 여부 (y/n)
    study_post_writer INT NOT NULL COMMENT '게시글 작성자',                    -- 게시글 작성자의 ID
    study_cmt_writer INT NOT NULL COMMENT '댓글 작성자',                       -- 댓글 작성자의 ID
    ref_study_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'               -- 참조 댓글 작성자의 ID
);

-- BOOKMARK 테이블 생성
CREATE TABLE IF NOT EXISTS BOOKMARK (
    bookmark_id INT AUTO_INCREMENT NOT NULL COMMENT '북마크 ID' PRIMARY KEY, -- 북마크 고유 식별자
    member_id INT NOT NULL COMMENT '회원 ID',                              -- 북마크를 소유한 회원 ID (외래 키 설정 가능)
    basic_bm_id INT NULL COMMENT '기본 북마크 ID',                         -- 기본 게시판 북마크 ID
    study_bm_id INT NULL COMMENT '스터디 게시판 북마크 ID',                -- 스터디 게시판 북마크 ID
    emp_bm_id INT NULL COMMENT '취업 정보 게시판 북마크 ID'                -- 취업 정보 게시판 북마크 ID
);

-- BOOK_INFO 테이블 생성
CREATE TABLE IF NOT EXISTS BOOK_INFO (
    book_id INT AUTO_INCREMENT NOT NULL COMMENT '책 ID' PRIMARY KEY,       -- 책 고유 식별자
    book_name VARCHAR(255) NOT NULL COMMENT '책 이름',                     -- 책 이름
    book_author VARCHAR(255) NOT NULL COMMENT '책 저자',                   -- 책 저자
    book_publisher VARCHAR(255) NOT NULL COMMENT '출판사',                 -- 책 출판사
    book_total INTEGER NOT NULL DEFAULT 0 COMMENT '총 권수'                -- 책의 총 권수 (기본값 0)
);

-- LIBRARY 테이블 생성
CREATE TABLE IF NOT EXISTS LIBRARY (
    lib_member_id INT NOT NULL COMMENT '회원 ID' PRIMARY KEY,              -- 대출한 회원의 ID (외래 키: MEMBER 테이블 참조)
    lib_book_id INT NOT NULL COMMENT '책 ID',                             -- 대출한 책의 ID (외래 키: BOOK_INFO 테이블 참조)
    lib_start_date DATE NOT NULL COMMENT '대출 시작일',                   -- 대출 시작 날짜
    lib_rental_yn CHAR(4) DEFAULT 'N' COMMENT '반납 여부' CHECK (lib_rental_yn IN ('y', 'n')), -- 반납 여부
    FOREIGN KEY (lib_member_id) REFERENCES MEMBER (member_id),             -- 회원 ID 외래 키 설정
    FOREIGN KEY (lib_book_id) REFERENCES BOOK_INFO (book_id)               -- 책 ID 외래 키 설정
);

-- MESSAGE 테이블 생성
CREATE TABLE IF NOT EXISTS MESSAGE (
    msg_id INT AUTO_INCREMENT NOT NULL COMMENT '메시지 ID' PRIMARY KEY,    -- 메시지 고유 식별자
    msg_content VARCHAR(255) NOT NULL COMMENT '메시지 내용',               -- 메시지 내용
    msg_send_date DATE NOT NULL COMMENT '메시지 전송일',                   -- 메시지 전송 날짜
    msg_sender_id INT NOT NULL COMMENT '보낸 사람 ID',                    -- 메시지 발신자 ID
    msg_rcver_id INT NOT NULL COMMENT '받는 사람 ID'                      -- 메시지 수신자 ID
);

-- PERSONAL_SCHEDULE 테이블 생성
CREATE TABLE IF NOT EXISTS PERSONAL_SCHEDULE (
    psn_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '개인 일정 ID' PRIMARY KEY, -- 개인 일정 고유 식별자
    psn_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',               -- 개인 일정 내용
    psn_schedule_date DATE NOT NULL COMMENT '일정 날짜',                          -- 일정 날짜
    psn_schedule_writer_id INT NOT NULL COMMENT '작성자 ID'                       -- 작성자 ID
);

-- QUESTION 테이블 생성
CREATE TABLE IF NOT EXISTS QUESTION (
    qst_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 ID' PRIMARY KEY,             -- 질문 고유 식별자
    qst_title VARCHAR(255) NOT NULL COMMENT '질문 제목',                         -- 질문 제목
    qst_content VARCHAR(255) NOT NULL COMMENT '질문 내용',                       -- 질문 내용
    qst_answer VARCHAR(255) NOT NULL COMMENT '답변',                             -- 질문 답변
    qst_level VARCHAR(255) NOT NULL COMMENT '질문 난이도',                       -- 질문 난이도
    qst_category_id INT NOT NULL COMMENT '카테고리 ID'                           -- 질문 카테고리 ID (외래 키 설정 가능)
);

-- MEMBER_QUESTION 테이블 생성
CREATE TABLE IF NOT EXISTS MEMBER_QUESTION (
    qst_member_id INT NOT NULL COMMENT '회원 ID',                                -- 질문과 연관된 회원 ID (외래 키: MEMBER 테이블 참조)
    qst_id INT NOT NULL COMMENT '질문 ID',                                      -- 질문 ID (외래 키: QUESTION 테이블 참조)
    qst_cmplt_yn CHAR(4) NOT NULL COMMENT '완료 여부' CHECK(qst_cmplt_yn IN ('y', 'n')), -- 질문 완료 여부
    qst_answer_yn CHAR(4) NOT NULL COMMENT '답변 여부' CHECK(qst_answer_yn IN ('y', 'n')), -- 질문 답변 여부
    PRIMARY KEY(qst_member_id, qst_id),                                         -- 복합 기본 키 설정
    FOREIGN KEY (qst_member_id) REFERENCES MEMBER (member_id),                  -- 회원 ID 외래 키 설정
    FOREIGN KEY (qst_id) REFERENCES QUESTION (qst_id)                           -- 질문 ID 외래 키 설정
);

-- BASIC_BOARD 테이블 생성
CREATE TABLE IF NOT EXISTS BASIC_BOARD (
    basic_id INT AUTO_INCREMENT NOT NULL COMMENT '기본 게시판 ID' PRIMARY KEY, -- 기본 게시판 고유 식별자
    basic_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',                   -- 게시판 제목
    basic_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',                 -- 게시판 내용
    basic_date DATE NOT NULL COMMENT '작성 날짜',                              -- 게시판 작성 날짜
    basic_view INT NOT NULL COMMENT '조회수',                                  -- 게시판 조회수
    basic_anonym CHAR(4) NOT NULL COMMENT '익명 여부',                         -- 익명 여부
    basic_writer INT NOT NULL COMMENT '작성자 ID'                             -- 작성자 ID
);

-- STUDY_BOARD 테이블 생성
CREATE TABLE IF NOT EXISTS STUDY_BOARD (
    study_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 게시판 ID' PRIMARY KEY, -- 스터디 게시판 고유 식별자
    study_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',                    -- 게시판 제목
    study_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',                  -- 게시판 내용
    study_date DATE NOT NULL COMMENT '작성 날짜',                               -- 게시판 작성 날짜
    study_view INT NOT NULL COMMENT '조회수',                                   -- 게시판 조회수
    study_complete CHAR(4) NOT NULL COMMENT '완료 여부',                        -- 완료 여부
    study_writer INT NOT NULL COMMENT '작성자 ID'                              -- 작성자 ID
);

-- EMP_INFO_BOARD 테이블 생성
CREATE TABLE IF NOT EXISTS EMP_INFO_BOARD (
    emp_id INT AUTO_INCREMENT NOT NULL COMMENT '취업 정보 게시판 ID' PRIMARY KEY, -- 취업 정보 게시판 고유 식별자
    emp_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',                       -- 게시판 제목
    emp_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',                     -- 게시판 내용
    emp_date DATE NOT NULL COMMENT '작성 날짜',                                  -- 게시판 작성 날짜
    emp_view INT NOT NULL COMMENT '조회수',                                      -- 게시판 조회수
    emp_anonym CHAR(4) NOT NULL COMMENT '익명 여부',                             -- 익명 여부
    emp_writer_id INT NOT NULL COMMENT '작성자 ID'                              -- 작성자 ID
);

-- SHARED_SCHEDULE 테이블 생성
CREATE TABLE IF NOT EXISTS SHARED_SCHEDULE (
    sh_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '공유 일정 ID' PRIMARY KEY, -- 공유 일정 고유 식별자
    sh_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',                -- 공유 일정 내용
    sh_schedule_date DATE NOT NULL COMMENT '일정 날짜',                          -- 일정 날짜
    member_id INT NOT NULL COMMENT '회원 ID',                                    -- 회원 ID (외래 키 설정 가능)
    cardinal_id INT NOT NULL COMMENT '기수 ID'                                  -- 기수 ID (외래 키 설정 가능)
);

-- BLOCKLIST 테이블 생성
CREATE TABLE IF NOT EXISTS BLOCKLIST (
    blc_id INT AUTO_INCREMENT NOT NULL COMMENT '블랙리스트 ID' PRIMARY KEY, -- 블랙리스트 고유 식별자
    blc_date DATE NOT NULL COMMENT '등록 날짜',                            -- 블랙리스트 등록 날짜
    blc_reason VARCHAR(255) NOT NULL COMMENT '사유',                      -- 블랙리스트 등록 사유
    blc_action VARCHAR(255) NOT NULL COMMENT '조치 사항',                 -- 조치 사항
    blc_member_id INT NOT NULL COMMENT '회원 ID'                          -- 블랙리스트 대상 회원 ID
);

-- BASIC_CMT 테이블 생성
CREATE TABLE IF NOT EXISTS BASIC_CMT (
    basic_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '댓글 ID' PRIMARY KEY, -- 댓글 고유 식별자
    basic_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',           -- 댓글 내용
    basic_cmt_date DATE NOT NULL COMMENT '작성 날짜',                      -- 댓글 작성 날짜
    basic_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',                 -- 익명 여부
    basic_post_writer INT NOT NULL COMMENT '게시글 작성자',                -- 게시글 작성자 ID
    basic_cmt_writer INT NOT NULL COMMENT '댓글 작성자',                   -- 댓글 작성자 ID
    ref_basic_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'           -- 참조된 댓글 작성자 ID
);

-- QUESTION_CATEGORY 테이블 생성
CREATE TABLE IF NOT EXISTS QUESTION_CATEGORY (
    qc_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 카테고리 ID' PRIMARY KEY, -- 질문 카테고리 고유 식별자
    qc_name VARCHAR(255) NOT NULL COMMENT '카테고리 이름'                    -- 질문 카테고리 이름
);

-- CARDINAL 테이블 생성
CREATE TABLE IF NOT EXISTS CARDINAL (
    cardinal_id INT AUTO_INCREMENT NOT NULL COMMENT '기수 ID' PRIMARY KEY -- 기수 고유 식별자
);

-- BASIC_UPLOAD_FILE 테이블 생성
CREATE TABLE IF NOT EXISTS BASIC_UPLOAD_FILE (
    basic_file_id INT AUTO_INCREMENT NOT NULL COMMENT '파일 ID' PRIMARY KEY,         -- 파일 고유 식별자
    basic_origin_file_name VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',           -- 업로드된 원본 파일 이름
    basic_mdf_file_name VARCHAR(255) NOT NULL COMMENT '수정된 파일 이름',            -- 수정된 파일 이름
    basic_file_extension VARCHAR(255) NOT NULL COMMENT '파일 확장자',               -- 파일 확장자 (예: .jpg, .pdf)
    basic_post_writer INT NOT NULL COMMENT '게시글 작성자'                          -- 파일을 업로드한 게시글 작성자 ID
);

-- REPORT_REASON 테이블 생성
CREATE TABLE IF NOT EXISTS REPORT_REASON (
    rpt_reason_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 사유 ID' PRIMARY KEY,  -- 신고 사유 고유 식별자
    rpt_reason_content VARCHAR(255) NOT NULL COMMENT '신고 사유 내용'             -- 신고 사유 상세 내용
);

-- STUDY_PAGE 테이블 생성
CREATE TABLE IF NOT EXISTS STUDY_PAGE (
    study_page_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 페이지 ID' PRIMARY KEY, -- 스터디 페이지 고유 식별자
    study_page_title VARCHAR(255) NOT NULL COMMENT '페이지 제목',                   -- 스터디 페이지 제목
    study_post_writer INT NOT NULL COMMENT '게시글 작성자',                         -- 스터디 게시글 작성자 ID
    study_post_id INT NOT NULL COMMENT '게시글 ID'                                  -- 연결된 스터디 게시글 ID
);

-- STUDY_PARTICIPANT 테이블 생성
CREATE TABLE IF NOT EXISTS STUDY_PARTICIPANT (
    study_page_id INT NOT NULL COMMENT '스터디 페이지 ID',      -- 스터디 페이지 ID (외래 키 설정 가능)
    study_ptcp_id INT NOT NULL COMMENT '참가자 ID',            -- 스터디 참가자 ID (외래 키 설정 가능)
    PRIMARY KEY(study_page_id, study_ptcp_id)                  -- 복합 기본 키로 설정
);

-- BASIC_REPORT 테이블 생성
CREATE TABLE IF NOT EXISTS BASIC_REPORT (
    basic_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,  -- 신고 고유 식별자
    basic_rpt_date DATE NOT NULL COMMENT '신고 날짜',                        -- 신고 날짜
    basic_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',                -- 신고 사유 ID (외래 키 설정 가능)
    basic_rpt_member_id INT NOT NULL COMMENT '신고자 ID',                   -- 신고자 ID
    basic_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',               -- 피신고자 ID
    basic_post_id INT NULL COMMENT '게시글 ID',                             -- 신고된 게시글 ID
    basic_cmt_id INT NULL COMMENT '댓글 ID'                                 -- 신고된 댓글 ID
);

-- STUDY_REPORT 테이블 생성
CREATE TABLE IF NOT EXISTS STUDY_REPORT (
    study_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,  -- 신고 고유 식별자
    study_rpt_date DATE NOT NULL COMMENT '신고 날짜',                        -- 신고 날짜
    study_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',                -- 신고 사유 ID (외래 키 설정 가능)
    study_rpt_member_id INT NOT NULL COMMENT '신고자 ID',                   -- 신고자 ID
    study_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',               -- 피신고자 ID
    study_post_id INT NULL COMMENT '게시글 ID',                             -- 신고된 게시글 ID
    study_cmt_id INT NULL COMMENT '댓글 ID'                                 -- 신고된 댓글 ID
);

-- EMP_INFO_REPORT 테이블 생성
CREATE TABLE IF NOT EXISTS EMP_INFO_REPORT (
    emp_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,    -- 신고 고유 식별자
    emp_rpt_date DATE NOT NULL COMMENT '신고 날짜',                          -- 신고 날짜
    emp_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',                  -- 신고 사유 ID (외래 키 설정 가능)
    emp_rpt_member_id INT NOT NULL COMMENT '신고자 ID',                     -- 신고자 ID
    emp_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',                 -- 피신고자 ID
    emp_post_id INT NULL COMMENT '게시글 ID',                               -- 신고된 게시글 ID
    emp_cmt_id INT NULL COMMENT '댓글 ID'                                   -- 신고된 댓글 ID
);

-- EMP_INFO_COMMENT 테이블 생성
CREATE TABLE IF NOT EXISTS EMP_INFO_COMMENT (
    emp_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '댓글 ID' PRIMARY KEY,  -- 댓글 고유 식별자
    emp_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',             -- 댓글 내용
    emp_cmt_date DATE NOT NULL COMMENT '작성 날짜',                        -- 댓글 작성 날짜
    emp_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',                   -- 익명 여부
    emp_post_writer INT NOT NULL COMMENT '게시글 작성자',                  -- 게시글 작성자 ID
    emp_cmt_writer INT NOT NULL COMMENT '댓글 작성자',                     -- 댓글 작성자 ID
    ref_emp_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'             -- 참조된 댓글 작성자 ID
);

-- MENTORING 테이블 생성
CREATE TABLE IF NOT EXISTS MENTORING (
    mtr_id INT AUTO_INCREMENT NOT NULL COMMENT '멘토링 ID' PRIMARY KEY,   -- 멘토링 고유 식별자
    mentor_id INT NOT NULL COMMENT '멘토 ID'                             -- 멘토 ID (외래 키 설정 가능)
);

-- MENTOR_SCHEDULE 테이블 생성
CREATE TABLE IF NOT EXISTS MENTOR_SCHEDULE (
    mt_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '멘토 일정 ID' PRIMARY KEY, -- 멘토 일정 고유 식별자
    mt_schedule_date DATE NOT NULL COMMENT '일정 날짜',                             -- 멘토 일정 날짜
    mtr_id INT NOT NULL COMMENT '멘토링 ID'                                        -- 연결된 멘토링 ID
);

-- MENTEE_FROM_MENTORING 테이블 생성
CREATE TABLE IF NOT EXISTS MENTEE_FROM_MENTORING (
    mfm_id INT NOT NULL COMMENT '멘토링 ID',          -- 멘토링 ID (외래 키 설정 가능)
    menti_id INT NOT NULL COMMENT '멘티 ID',         -- 멘티 ID (외래 키 설정 가능)
    PRIMARY KEY(mfm_id, menti_id)                   -- 복합 기본 키로 설정
);