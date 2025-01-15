INSERT INTO MEMBER(member_id,member_email, member_pw, member_name, member_no, member_pnum, member_photo, member_cmplt_yn, member_entry_yn, member_blocklist_yn, member_blocklist_date, member_cardinal_id)
VALUES
(1, 'admin1', 'admin', '관리자', '123456-123456', '010-1234-5678', NULL, 'y', 'n', 'n', NULL, 0);

ALTER TABLE member AUTO_INCREMENT = 101;
INSERT INTO MEMBER (member_email, member_pw, member_name, member_no, member_pnum, member_photo, member_cmplt_yn, member_entry_yn, member_blocklist_yn, member_blocklist_date, member_cardinal_id)
VALUES
('minji@example.com', 'passMinji123', '민자', '900101-2234567', '010-1234-5671', NULL, 'y', 'n', 'n', NULL, 1),
('hani@example.com', 'passHani456', '하나', '000202-4234567', '010-1234-5672', NULL, 'y', 'n', 'n', NULL, 1),
('danielle@example.com', 'passDan789', '다닐', '910303-1234567', '010-1234-5673', NULL, 'y', 'n', 'n', NULL, 1),
('haerin@example.com', 'passHae123', '해림', '800404-2234567', '010-1234-5674', NULL, 'y', 'n', 'n', NULL, 1),
('hyein@example.com', 'passHye456', '혜운', '901205-2234567', '010-1234-5675', NULL, 'y', 'n', 'n', NULL, 1),
('jiso@example.com', 'passJis789', '지소', '801101-1234567', '010-1234-5676', NULL, 'y', 'n', 'n', NULL, 1),
('jennie@example.com', 'passJen123', '제니', '910707-2234567', '010-1234-5677', NULL, 'y', 'n', 'n', NULL, 2),
('rose@example.com', 'passRos456', '로세', '900808-2234567', '010-1234-5678', NULL, 'y', 'n', 'n', NULL, 2),
('lisa@example.com', 'passLis789', '리사', '801009-2234567', '010-1234-5679', NULL, 'y', 'n', 'n', NULL, 2),
('jisoo@example.com', 'passJis123', '지수', '910110-1234567', '010-1234-5680', NULL, 'y', 'n', 'n', NULL, 2),
('iu@example.com', 'passIu456', '아이', '800911-2234567', '010-1234-5681', NULL, 'y', 'n', 'n', NULL, 3),
('taeyeon@example.com', 'passTae789', '태온', '901212-2234567', '010-1234-5682', NULL, 'y', 'n', 'n', NULL, 3),
('tiffany@example.com', 'passTif123', '티나', '800313-1234567', '010-1234-5683', NULL, 'y', 'n', 'n', NULL, 3),
('yoona@example.com', 'passYoo456', '유안', '900414-2234567', '010-1234-5684', NULL, 'y', 'n', 'n', NULL, 3),
('seohyun@example.com', 'passSeo789', '서휜', '801515-2234567', '010-1234-5685', NULL, 'y', 'n', 'n', NULL, 3),
('irene@example.com', 'passIre123', '이림', '900616-2234567', '010-1234-5686', NULL, 'y', 'n', 'n', NULL, 4),
('seulgi@example.com', 'passSeu456', '슬기', '910717-2234567', '010-1234-5687', NULL, 'y', 'n', 'n', NULL, 4),
('wendy@example.com', 'passWen789', '원디', '800818-2234567', '010-1234-5688', NULL, 'y', 'n', 'n', NULL, 4),
('joy@example.com', 'passJoy123', '조이', '910919-2234567', '010-1234-5689', NULL, 'y', 'n', 'n', NULL, 4),
('yeri@example.com', 'passYer456', '예리', '801020-2234567', '010-1234-5690', NULL, 'y', 'n', 'n', NULL, 4),
('sana@example.com', 'passSan789', '사다', '900121-2234567', '010-1234-5691', NULL, 'n', 'n', 'n', NULL, 5),
('momo@example.com', 'passMom123', '모모', '910222-2234567', '010-1234-5692', NULL, 'n', 'n', 'n', NULL, 5),
('jihyo@example.com', 'passJih456', '지효', '800323-2234567', '010-1234-5693', NULL, 'n', 'n', 'n', NULL, 5),
('mina@example.com', 'passMin789', '미다', '900424-2234567', '010-1234-5694', NULL, 'n', 'n', 'n', NULL, 5),
('dahyun@example.com', 'passDah123', '다훈', '910525-2234567', '010-1234-5695', NULL, 'n', 'n', 'n', NULL, 5),
('chaeyoung@example.com', 'passCha456', '채영', '800626-2234567', '010-1234-5696', NULL, 'n', 'n', 'n', NULL, 5),
('tzuyu@example.com', 'passTzu789', '쯔유', '900727-2234567', '010-1234-5697', NULL, 'n', 'n', 'n', NULL, 5),
('yeji@example.com', 'passYej123', '예준', '910828-4234567', '010-1234-5698', NULL, 'n', 'n', 'n', NULL, 6),
('lia@example.com', 'passLia456', '리아', '800929-2234567', '010-1234-5699', NULL, 'n', 'n', 'n', NULL, 6),
('eunwoo@example.com', 'passen553', '온우', '970207-1003407', '010-0407-7040', NULL, 'n', 'n', 'n', NULL, 6);
