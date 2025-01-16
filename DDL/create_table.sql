-- 외래 키 제약 조건을 무시하여 테이블 삭제
SET FOREIGN_KEY_CHECKS = 0;

-- 재생성을 위해 테이블 삭제
DROP TABLE IF EXISTS CARDINAL;
DROP TABLE IF EXISTS member;

DROP TABLE IF EXISTS BASIC_BOARD;
DROP TABLE IF EXISTS EMP_INFO_BOARD;
DROP TABLE IF EXISTS study_board;

DROP TABLE IF EXISTS BASIC_CMT;
DROP TABLE IF EXISTS study_cmt;
DROP TABLE IF EXISTS EMP_INFO_CMT;

DROP TABLE IF EXISTS BOOKMARK;

DROP TABLE IF EXISTS basic_upload_file;

DROP TABLE IF EXISTS REPORT_REASON;
DROP TABLE IF EXISTS basic_report;
DROP TABLE IF EXISTS EMP_INFO_REPORT;
DROP TABLE IF EXISTS STUDY_REPORT;
DROP TABLE IF EXISTS BLOCKLIST;

DROP TABLE IF EXISTS STUDY_PAGE;
DROP TABLE IF EXISTS STUDY_PARTICIPANT;

DROP TABLE IF EXISTS MENTORING;
DROP TABLE IF EXISTS MENTOR_SCHEDULE;
DROP TABLE IF EXISTS MENTEE_FROM_MENTORING;

DROP TABLE IF EXISTS SHARED_SCHEDULE;
DROP TABLE IF EXISTS personal_schedule;

-- 외래 키 제약 조건 다시 활성화
SET FOREIGN_KEY_CHECKS = 1;


-- -------------------- < MEMBER >--------------------
CREATE TABLE IF NOT EXISTS CARDINAL (
    cardinal_id INTEGER NOT NULL PRIMARY KEY COMMENT '기수 ID'
);

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
    member_blocklist_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '블랙리스트 여부' CHECK(member_blocklist_yn IN ('y', 'n')),
    member_blocklist_date DATETIME COMMENT '블랙리스트 등록 날짜',
    member_cardinal_id INTEGER NOT NULL COMMENT '기수 ID',
    FOREIGN KEY (member_cardinal_id)
	 REFERENCES CARDINAL (cardinal_id)
);



-- -------------------- < BOARD >--------------------
CREATE TABLE IF NOT EXISTS BASIC_BOARD (
    basic_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '자유 게시글 ID',
    basic_title VARCHAR(255) NOT NULL COMMENT '게시글 제목',
    basic_content VARCHAR(255) NOT NULL COMMENT '게시글 내용',
    basic_date DATETIME NOT NULL COMMENT '작성 날짜',
    basic_view INTEGER NOT NULL DEFAULT 0 COMMENT '조회수',
    basic_anonym_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(basic_anonym_yn IN ('y', 'n')),
    basic_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(basic_erase_yn IN ('y', 'n')),
    basic_writer INTEGER NOT NULL COMMENT '작성자 ID',
    FOREIGN KEY (basic_writer)
	 REFERENCES MEMBER (member_id)
);

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



-- -------------------- < COMMENT >--------------------
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

CREATE TABLE IF NOT EXISTS EMP_INFO_CMT (
    emp_cmt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '댓글 ID',
    emp_cmt_content VARCHAR(255) NOT NULL COMMENT '댓글 내용',
    emp_cmt_date DATETIME NOT NULL COMMENT '작성 날짜',
    emp_cmt_anonym_yn CHAR(4) DEFAULT 'n' COMMENT '익명 여부' CHECK(emp_cmt_anonym_yn IN ('y', 'n')),
    emp_cmt_erase_yn CHAR(4) DEFAULT 'n' COMMENT '삭제 여부' CHECK(emp_cmt_erase_yn IN ('y', 'n')),
    emp_post_id INTEGER NOT NULL COMMENT '게시글 id',
    emp_cmt_writer INTEGER NOT NULL COMMENT '댓글 작성자',
    ref_emp_cmt_id INTEGER COMMENT '대댓글용 참조 댓글 ID',
    FOREIGN KEY (emp_post_id)
    REFERENCES EMP_INFO_BOARD(emp_id),
    FOREIGN KEY (emp_cmt_writer)
    REFERENCES member(member_id),
    FOREIGN KEY (ref_emp_cmt_id)
    REFERENCES EMP_INFO_CMT(emp_cmt_id)
);

CREATE TABLE IF NOT EXISTS STUDY_CMT (
    study_cmt_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '스터디 모집 댓글 ID',
    study_cmt_content VARCHAR(255) NOT NULL COMMENT ' 댓글 내용',
    study_cmt_date DATETIME NOT NULL COMMENT '작성 날짜',
    study_cmt_anonym_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(study_cmt_anonym_yn IN ('y', 'n')),
    study_cmt_erase_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '삭제 여부' CHECK(study_cmt_erase_yn IN ('y', 'n')),
    study_post_id INTEGER NOT NULL COMMENT '스터디 모집 게시글 id',
    study_cmt_writer INTEGER NOT NULL COMMENT '댓글 작성자',
    ref_study_cmt_id INTEGER COMMENT '대댓글용 참조 댓글 ID',
    FOREIGN KEY (study_post_id)
    REFERENCES STUDY_BOARD(study_id),
    FOREIGN KEY (study_cmt_writer)
    REFERENCES member(member_id),
    FOREIGN KEY (ref_study_cmt_id)
    REFERENCES STUDY_CMT(study_cmt_id)
);



-- -------------------- < BOOKMARK >--------------------
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



-- -------------------- < FILE >--------------------
CREATE TABLE IF NOT EXISTS BASIC_UPLOAD_FILE (
    basic_file_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '파일 ID',
    basic_origin_file_name VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',
    basic_mdf_file_name VARCHAR(255) NOT NULL COMMENT '수정된 파일 이름',
    basic_file_extension VARCHAR(255) NOT NULL COMMENT '파일 확장자',
    basic_post_id INTEGER NOT NULL COMMENT '자유 게시글 ID',
    FOREIGN KEY (basic_post_id)
    REFERENCES BASIC_BOARD(basic_id)
);



-- -------------------- < REPORT >--------------------
CREATE TABLE IF NOT EXISTS REPORT_REASON (
    rpt_reason_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT '신고 사유 ID',
    rpt_reason_content VARCHAR(255) NOT NULL COMMENT '신고 사유 내용'
);

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

CREATE TABLE IF NOT EXISTS BLOCKLIST (
    blc_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '블록리스트 ID',
    blc_date DATETIME NOT NULL COMMENT '블록 날짜',
    blc_reason VARCHAR(255) NOT NULL COMMENT '블록 사유',
    blc_action VARCHAR(255) NOT NULL COMMENT '조치 내역',
    blc_member_id INTEGER NOT NULL COMMENT '블록 회원 ID',
    FOREIGN KEY (blc_member_id)
    REFERENCES member (member_id)
);



-- -------------------- < STUDY PAGE >--------------------
CREATE TABLE IF NOT EXISTS STUDY_PAGE (
    study_page_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '스터디 페이지 ID',
    study_page_title VARCHAR(255) NOT NULL COMMENT '페이지 제목',
    study_post_id INTEGER NOT NULL COMMENT '게시글 ID',
    FOREIGN KEY (study_post_id)
    REFERENCES study_board(study_id)
);

CREATE TABLE IF NOT EXISTS STUDY_PARTICIPANT (
    study_page_id INTEGER NOT NULL COMMENT '스터디 페이지 ID',
    study_ptcp_id INTEGER NOT NULL COMMENT '참가자 ID',
    PRIMARY KEY(study_page_id, study_ptcp_id),
    FOREIGN KEY (study_page_id)
	 REFERENCES STUDY_PAGE (study_page_id),
	 FOREIGN KEY (study_ptcp_id)
	 REFERENCES member (member_id)
);



-- -------------------- < MENTORING >--------------------
CREATE TABLE IF NOT EXISTS MENTORING (
    mtr_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '멘토방 ID',
    mentor_id INTEGER NOT NULL COMMENT '멘토 ID',
    mtr_accept_yn CHAR(4) NOT NULL DEFAULT 'n' COMMENT '익명 여부' CHECK(mtr_accept_yn IN ('y', 'n')),
    FOREIGN KEY (mentor_id)
    REFERENCES member(member_id)
);

CREATE TABLE IF NOT EXISTS MENTEE_FROM_MENTORING (
    mfr_id INTEGER NOT NULL COMMENT '멘토방 ID',
    menti_id INTEGER NOT NULL COMMENT '멘티 ID',
    PRIMARY KEY(mfr_id, menti_id),
    FOREIGN KEY (mfr_id)
    REFERENCES MENTORING(mtr_id),
    FOREIGN KEY (menti_id)
    REFERENCES member(member_id)
);



-- -------------------- < SCHEDULE >--------------------
CREATE TABLE IF NOT EXISTS PERSONAL_SCHEDULE (
    psn_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '개인 일정 ID',
    psn_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    psn_schedule_start_date DATETIME NOT NULL COMMENT '일정 시작 날짜',
    psn_schedule_end_date DATETIME NOT NULL COMMENT '일정 종료 날짜',
    psn_schedule_member_id INTEGER NOT NULL COMMENT '회원 ID',
    FOREIGN KEY (psn_schedule_member_id)
    REFERENCES member(member_id)
);

CREATE TABLE IF NOT EXISTS SHARED_SCHEDULE (
    sh_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '공유 일정 ID',
    sh_schedule_content VARCHAR(255) NOT NULL COMMENT '일정 내용',
    sh_schedule_start_date DATETIME NOT NULL COMMENT '일정 시작 날짜',
    sh_schedule_end_date DATETIME NOT NULL COMMENT '일정 종료 날짜',
    cardinal_id INTEGER NOT NULL COMMENT '기수 ID',
    FOREIGN KEY (cardinal_id)
    REFERENCES CARDINAL(cardinal_id)
);

CREATE TABLE IF NOT EXISTS MENTOR_SCHEDULE (
    mt_schedule_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '멘토 일정 ID',
    mt_schedule_start_date DATETIME NOT NULL COMMENT '멘토링 시작 날짜',
    mt_schedule_end_date DATETIME NOT NULL COMMENT '멘토링 종료 날짜',
    mtr_id INTEGER NOT NULL COMMENT '멘토방 ID',
    FOREIGN KEY (mtr_id)
    REFERENCES MENTORING(mtr_id)
);
