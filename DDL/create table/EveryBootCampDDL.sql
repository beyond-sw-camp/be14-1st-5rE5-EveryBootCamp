SET FOREIGN_KEY_CHECKS = 0;			-- 외래키 관계 무시
DROP TABLE IF EXISTS MEMBER;
DROP TABLE IF EXISTS STUDY_CMT;
DROP TABLE IF EXISTS BOOKMARK;
DROP TABLE IF EXISTS BOOK_INFO;
DROP TABLE IF EXISTS library;
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
SET FOREIGN_KEY_CHECKS = 1;			-- 외래키 관계 무시 X

CREATE TABLE IF NOT EXISTS MEMBER (
    member_id INT AUTO_INCREMENT NOT NULL COMMENT '회원 ID' PRIMARY KEY,
    member_email VARCHAR(255) NOT NULL COMMENT '회원 이메일',
    member_pw VARCHAR(255) NOT NULL COMMENT '회원 비밀번호',
    member_name VARCHAR(255) NOT NULL COMMENT '회원 이름',
    member_no VARCHAR(255) NOT NULL COMMENT '회원 주민등록번호',
    member_pnum VARCHAR(255) NOT NULL COMMENT '회원 전화번호',
    member_photo VARCHAR(255) NULL COMMENT '회원 사진',
    member_cmplt_yn CHAR(4) NOT NULL COMMENT '수료생 여부' CHECK(member_cmplt_yn IN ('y', 'n')),
    member_entry_yn CHAR(4) NOT NULL COMMENT '허가 여부' DEFAULT 'n' CHECK(member_entry_yn IN ('y', 'n')),
    member_blocklist_yn CHAR(4) NOT NULL COMMENT '블랙리스트 여부' CHECK(member_blocklist_yn IN ('y', 'n')),
    member_blocklist_date DATE NULL COMMENT '블랙리스트 등록 날짜',
    member_cardinal_id INT NOT NULL COMMENT '기수 ID'
);

CREATE TABLE IF NOT EXISTS STUDY_CMT (
    study_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 댓글 ID' PRIMARY KEY,
    study_cmt_content VARCHAR(255) NOT NULL COMMENT '스터디 댓글 내용',
    study_cmt_date DATE NOT NULL COMMENT '스터디 댓글 작성일',
    study_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    study_post_writer INT NOT NULL COMMENT '게시글 작성자',
    study_cmt_writer INT NOT NULL COMMENT '댓글 작성자',
    ref_study_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'
);

CREATE TABLE IF NOT EXISTS BOOKMARK (
    bookmark_id INT AUTO_INCREMENT NOT NULL COMMENT '북마크 ID' PRIMARY KEY,
    member_id INT NOT NULL COMMENT '회원 ID',
    basic_bm_id INT NULL COMMENT '기본 북마크 ID',
    study_bm_id INT NULL COMMENT '스터디 북마크 ID',
    emp_bm_id INT NULL COMMENT '취업 북마크 ID'
);

CREATE TABLE IF NOT EXISTS BOOK_INFO (
    book_id INT AUTO_INCREMENT NOT NULL COMMENT '책 ID' PRIMARY KEY,
    book_name VARCHAR(255) NOT NULL COMMENT '책 이름',
    book_author VARCHAR(255) NOT NULL COMMENT '책 저자',
    book_publisher VARCHAR(255) NOT NULL COMMENT '출판사',
    book_total INTEGER NOT NULL COMMENT '총 권수' DEFAULT 0 
);

CREATE TABLE IF NOT EXISTS LIBRARY (
    lib_member_id INT NOT NULL COMMENT '회원 ID' PRIMARY KEY,
    lib_book_id INT NOT NULL COMMENT '책 ID',
    lib_start_date DATE NOT NULL COMMENT '대출 시작일',
    lib_rental_yn CHAR(4) NOT NULL COMMENT '반납 여부' DEFAULT 'N' CHECK (lib_rental_yn IN ('y', 'n')),
    FOREIGN KEY (lib_member_id) REFERENCES MEMBER (member_id),
    FOREIGN KEY (lib_book_id) REFERENCES BOOK_INFO (book_id)
);

CREATE TABLE IF NOT EXISTS MESSAGE (
    msg_id INT AUTO_INCREMENT NOT NULL COMMENT '메시지 ID' PRIMARY KEY,
    msg_content VARCHAR(255) NOT NULL COMMENT '메시지 내용',
    msg_send_date DATE NOT NULL COMMENT '메시지 전송일',
    msg_sender_id INT NOT NULL COMMENT '보낸 사람 ID',
    msg_rcver_id INT NOT NULL COMMENT '받는 사람 ID'
);

CREATE TABLE IF NOT EXISTS PERSONAL_SCHEDULE (
    psn_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '개인 일정 ID' PRIMARY KEY,
    psn_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    psn_schedule_date DATE NOT NULL COMMENT '일정 날짜',
    psn_schedule_writer_id INT NOT NULL COMMENT '작성자 ID'
);

CREATE TABLE IF NOT EXISTS QUESTION (
    qst_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 ID' PRIMARY KEY,
    qst_title VARCHAR(255) NOT NULL COMMENT '질문 제목',
    qst_content VARCHAR(255) NOT NULL COMMENT '질문 내용',
    qst_answer VARCHAR(255) NOT NULL COMMENT '답변',
    qst_level VARCHAR(255) NOT NULL COMMENT '질문 난이도',
    qst_category_id INT NOT NULL COMMENT '카테고리 ID'
);

CREATE TABLE IF NOT EXISTS MEMBER_QUESTION (
    qst_member_id INT NOT NULL COMMENT '회원 ID',
    qst_id INT NOT NULL COMMENT '질문 ID',
    qst_cmplt_yn CHAR(4) NOT NULL COMMENT '완료 여부' CHECK(qst_cmplt_yn IN ('y', 'n')),
    qst_answer_yn CHAR(4) NOT NULL COMMENT '답변 여부' CHECK(qst_answer_yn IN ('y', 'n')),
    PRIMARY KEY(qst_member_id, qst_id),
    FOREIGN KEY (qst_member_id) REFERENCES MEMBER (member_id),
    FOREIGN KEY (qst_id) REFERENCES QUESTION (qst_id)
);

CREATE TABLE IF NOT EXISTS BASIC_BOARD (
    basic_id INT AUTO_INCREMENT NOT NULL COMMENT '기본 게시판 ID' PRIMARY KEY,
    basic_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',
    basic_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',
    basic_date DATE NOT NULL COMMENT '작성 날짜',
    basic_view INT NOT NULL COMMENT '조회수',
    basic_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    basic_writer INT NOT NULL COMMENT '작성자 ID'
);

CREATE TABLE IF NOT EXISTS STUDY_BOARD (
    study_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 게시판 ID' PRIMARY KEY,
    study_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',
    study_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',
    study_date DATE NOT NULL COMMENT '작성 날짜',
    study_view INT NOT NULL COMMENT '조회수',
    study_complete CHAR(4) NOT NULL COMMENT '완료 여부',
    study_writer INT NOT NULL COMMENT '작성자 ID'
);

CREATE TABLE IF NOT EXISTS emp_info_board (
    emp_id INT AUTO_INCREMENT NOT NULL COMMENT '취업 정보 게시판 ID' PRIMARY KEY,
    emp_title VARCHAR(255) NOT NULL COMMENT '게시판 제목',
    emp_content VARCHAR(255) NOT NULL COMMENT '게시판 내용',
    emp_date DATE NOT NULL COMMENT '작성 날짜',
    emp_view INT NOT NULL COMMENT '조회수',
    emp_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    emp_writer_id INT NOT NULL COMMENT '작성자 ID'
);

CREATE TABLE IF NOT EXISTS shared_schedule (
    sh_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '공유 일정 ID' PRIMARY KEY,
    sh_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    sh_schedule_date DATE NOT NULL COMMENT '일정 날짜',
    member_id INT NOT NULL COMMENT '회원 ID',
    cardinal_id INT NOT NULL COMMENT '기수 ID'
);

CREATE TABLE IF NOT EXISTS BLOCKLIST (
    blc_id INT AUTO_INCREMENT NOT NULL COMMENT '블랙리스트 ID' PRIMARY KEY,
    blc_date DATE NOT NULL COMMENT '등록 날짜',
    blc_reason VARCHAR(255) NOT NULL COMMENT '사유',
    blc_action VARCHAR(255) NOT NULL COMMENT '조치 사항',
    blc_member_id INT NOT NULL COMMENT '회원 ID'
);

CREATE TABLE IF NOT EXISTS BASIC_CMT (
    basic_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '댓글 ID' PRIMARY KEY,
    basic_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    basic_cmt_date DATE NOT NULL COMMENT '작성 날짜',
    basic_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    basic_post_writer INT NOT NULL COMMENT '게시글 작성자',
    basic_cmt_writer INT NOT NULL COMMENT '댓글 작성자',
    ref_basic_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'
);

CREATE TABLE IF NOT EXISTS QUESTION_CATEGORY (
    qc_id INT AUTO_INCREMENT NOT NULL COMMENT '질문 카테고리 ID' PRIMARY KEY,
    qc_name VARCHAR(255) NOT NULL COMMENT '카테고리 이름'
);

CREATE TABLE IF NOT EXISTS CARDINAL (
    cardinal_id INT AUTO_INCREMENT NOT NULL COMMENT '기수 ID' PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS BASIC_UPLOAD_FILE (
    basic_file_id INT AUTO_INCREMENT NOT NULL COMMENT '파일 ID' PRIMARY KEY,
    basic_origin_file_name VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',
    basic_mdf_file_name VARCHAR(255) NOT NULL COMMENT '수정된 파일 이름',
    basic_file_extension VARCHAR(255) NOT NULL COMMENT '파일 확장자',
    basic_post_writer INT NOT NULL COMMENT '게시글 작성자'
);

CREATE TABLE IF NOT EXISTS REPORT_REASON (
    rpt_reason_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 사유 ID' PRIMARY KEY,
    rpt_reason_content VARCHAR(255) NOT NULL COMMENT '신고 사유 내용'
);

CREATE TABLE IF NOT EXISTS STUDY_PAGE (
    study_page_id INT AUTO_INCREMENT NOT NULL COMMENT '스터디 페이지 ID' PRIMARY KEY,
    study_page_title VARCHAR(255) NOT NULL COMMENT '페이지 제목',
    study_post_writer INT NOT NULL COMMENT '게시글 작성자',
    study_post_id INT NOT NULL COMMENT '게시글 ID'
);

CREATE TABLE IF NOT EXISTS STUDY_PARTICIPANT (
    study_page_id INT NOT NULL COMMENT '스터디 페이지 ID',
    study_ptcp_id INT NOT NULL COMMENT '참가자 ID',
    PRIMARY KEY(study_page_id, study_ptcp_id)
);

CREATE TABLE IF NOT EXISTS BASIC_REPORT (
    basic_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,
    basic_rpt_date DATE NOT NULL COMMENT '신고 날짜',
    basic_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',
    basic_rpt_member_id INT NOT NULL COMMENT '신고자 ID',
    basic_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',
    basic_post_id INT NULL COMMENT '게시글 ID',
    basic_cmt_id INT NULL COMMENT '댓글 ID'
);

CREATE TABLE IF NOT EXISTS STUDY_REPORT (
    study_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,
    study_rpt_date DATE NOT NULL COMMENT '신고 날짜',
    study_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',
    study_rpt_member_id INT NOT NULL COMMENT '신고자 ID',
    study_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',
    study_post_id INT NULL COMMENT '게시글 ID',
    study_cmt_id INT NULL COMMENT '댓글 ID'
);

CREATE TABLE IF NOT EXISTS EMP_INFO_REPORT (
    emp_rpt_id INT AUTO_INCREMENT NOT NULL COMMENT '신고 ID' PRIMARY KEY,
    emp_rpt_date DATE NOT NULL COMMENT '신고 날짜',
    emp_rpt_reason_id INT NOT NULL COMMENT '신고 사유 ID',
    emp_rpt_member_id INT NOT NULL COMMENT '신고자 ID',
    emp_rpted_member_id INT NOT NULL COMMENT '피신고자 ID',
    emp_post_id INT NULL COMMENT '게시글 ID',
    emp_cmt_id INT NULL COMMENT '댓글 ID'
);

CREATE TABLE IF NOT EXISTS EMP_INFO_COMMENT (
    emp_cmt_id INT AUTO_INCREMENT NOT NULL COMMENT '댓글 ID' PRIMARY KEY,
    emp_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    emp_cmt_date DATE NOT NULL COMMENT '작성 날짜',
    emp_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    emp_post_writer INT NOT NULL COMMENT '게시글 작성자',
    emp_cmt_writer INT NOT NULL COMMENT '댓글 작성자',
    ref_emp_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'
);

CREATE TABLE IF NOT EXISTS MENTORING (
    mtr_id INT AUTO_INCREMENT NOT NULL COMMENT '멘토링 ID' PRIMARY KEY,
    mentor_id INT NOT NULL COMMENT '멘토 ID'
);

CREATE TABLE IF NOT EXISTS MENTOR_SCHEDULE (
    mt_schedule_id INT AUTO_INCREMENT NOT NULL COMMENT '멘토 일정 ID' PRIMARY KEY,
    mt_schedule_date DATE NOT NULL COMMENT '일정 날짜',
    mtr_id INT NOT NULL COMMENT '멘토링 ID'
);

CREATE TABLE IF NOT EXISTS MENTEE_FROM_MENTORING (
    mfm_id INT AUTO_INCREMENT NOT NULL COMMENT '멘토링 ID',
    menti_id INT NOT NULL COMMENT '멘티 ID',
    PRIMARY KEY(mfm_id, menti_id)
);
CREATE TABLE IF NOT EXISTS EMP_INFO_COMMENT (
    emp_cmt_id INT NOT NULL COMMENT '댓글 ID' PRIMARY KEY,
    emp_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    emp_cmt_date DATE NOT NULL COMMENT '작성 날짜',
    emp_cmt_anonym CHAR(4) NOT NULL COMMENT '익명 여부',
    emp_post_writer INT NOT NULL COMMENT '게시글 작성자',
    emp_cmt_writer INT NOT NULL COMMENT '댓글 작성자',
    ref_emp_cmt_writer INT NOT NULL COMMENT '참조 댓글 작성자'
);

CREATE TABLE IF NOT EXISTS MENTORING (
    mtr_id INT NOT NULL COMMENT '멘토링 ID' PRIMARY KEY,
    mentor_id INT NOT NULL COMMENT '멘토 ID'
);

CREATE TABLE IF NOT EXISTS MENTOR_SCHEDULE (
    mt_schedule_id INT NOT NULL COMMENT '멘토 일정 ID' PRIMARY KEY,
    mt_schedule_date DATE NOT NULL COMMENT '일정 날짜',
    mtr_id INT NOT NULL COMMENT '멘토링 ID'
);

CREATE TABLE IF NOT EXISTS MENTEE_FROM_MENTORING (
    mfm_id INT NOT NULL COMMENT '멘토링 ID',
    menti_id INT NOT NULL COMMENT '멘티 ID',
    PRIMARY KEY(mfm_id, menti_id)
);
