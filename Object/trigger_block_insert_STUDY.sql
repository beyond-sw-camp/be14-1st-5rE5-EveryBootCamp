DELIMITER $$

CREATE OR REPLACE TRIGGER after_report_insert_emp
    AFTER INSERT ON STUDY_REPORT
    FOR EACH ROW
BEGIN
	-- 신고 당한 회원의 신고 횟수 증가
	 UPDATE MEMBER
    SET member_report = member_report + 1
    WHERE member_id = NEW.study_rpt_member_id;

    -- 신고 횟수 확인 및 블랙리스트 등록
    IF (SELECT COUNT(*) FROM blocklist WHERE blc_member_id = NEW.study_rpt_member_id) = 0 THEN
        IF (SELECT member_report FROM member WHERE member_id = NEW.study_rpt_member_id) = 5 THEN
            -- 블랙리스트에 회원 추가
            INSERT INTO BLOCKLIST (blc_date,blc_reason,blc_action, blc_member_id)
            VALUES (NOW(), '5회 신고', '계정 정지', NEW.study_rpt_member_id);
        
			   -- 해당 회원의 블락리스트 관련 정보 수정
	         UPDATE MEMBER
	         SET member_blocklist_yn = 'y', member_blocklist_date = NOW()
	         WHERE member_id = NEW.study_rpt_member_id;
	     END IF;
    END IF;
END$$

DELIMITER ;