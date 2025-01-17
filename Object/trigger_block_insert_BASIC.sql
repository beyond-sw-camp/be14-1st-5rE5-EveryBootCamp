DELIMITER $$

CREATE TRIGGER after_report_insert_basic
    AFTER INSERT ON BASIC_REPORT
    FOR EACH ROW
BEGIN
    -- 신고 당한 회원의 신고 횟수 증가
    UPDATE MEMBER
    SET member_report = member_report + 1
    WHERE member_id = NEW.basic_rpt_member_id;

    -- 신고 횟수 확인 및 블랙리스트 등록
    IF (SELECT member_report FROM member WHERE member_id = NEW.basic_rpt_member_id) >= 5 THEN
        -- 블랙리스트에 회원 추가
        INSERT INTO BLOCKLIST (blc_date,blc_reason,blc_action, blc_member_id)
        VALUES (NOW(),'5회신고','계정정지',NEW.basic_rpt_member_id );
    END IF;
END$$

DELIMITER ;
