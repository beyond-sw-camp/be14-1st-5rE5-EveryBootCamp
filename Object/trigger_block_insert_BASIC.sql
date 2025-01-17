DELIMITER $$

CREATE OR REPLACE TRIGGER after_report_insert_basic
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
        VALUES (NOW(), '5회 신고', '계정 정지', NEW.basic_rpt_member_id );
    END IF;
END$$

DELIMITER ;

INSERT
  INTO basic_report
(
 basic_rpt_date, basic_rpt_reason_id, basic_rpt_member_id, basic_post_id, basic_cmt_id
)
VALUES
(
 NOW(), 5, 131, 1, NULL
);

-- 데이터 조회
SELECT * FROM basic_report ORDER BY basic_rpt_date DESC;