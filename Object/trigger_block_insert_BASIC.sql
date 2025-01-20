DELIMITER $$

CREATE OR REPLACE TRIGGER after_report_insert_basic
    AFTER INSERT ON BASIC_REPORT
    FOR EACH ROW
BEGIN
    DECLARE rpted_basic_writer INT;

    -- 신고 당한 게시글의 작성자 ID를 변수에 저장
    SELECT basic_writer INTO rpted_basic_writer
    FROM basic_board
    WHERE basic_board.basic_id = NEW.basic_post_id;

    -- 신고 당한 회원의 신고 횟수 증가
    UPDATE MEMBER
    SET member_report = member_report + 1
    WHERE member_id = rpted_basic_writer;

    -- 신고 횟수 확인 및 블랙리스트 등록
    IF (SELECT COUNT(*) FROM blocklist WHERE blc_member_id = rpted_basic_writer) = 0 THEN
        IF (SELECT member_report FROM member WHERE member_id = rpted_basic_writer) = 5 THEN
            -- 블랙리스트에 회원 추가
            INSERT INTO BLOCKLIST (blc_date, blc_reason, blc_action, blc_member_id)
            VALUES (NOW(), '5회 신고', '계정 정지', rpted_basic_writer);
            
            -- 해당 회원의 블락리스트 관련 정보 수정
            UPDATE MEMBER
            SET member_blocklist_yn = 'y', member_blocklist_date = NOW()
            WHERE member_id = rpted_basic_writer;
        END IF;
    END IF;
END$$

DELIMITER ;