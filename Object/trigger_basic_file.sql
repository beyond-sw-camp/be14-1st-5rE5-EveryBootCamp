DELIMITER $$

CREATE TRIGGER after_basic_upload_insert
    AFTER INSERT ON BASIC_UPLOAD_FILE
    FOR EACH ROW
BEGIN
    -- BASIC_BOARD 테이블의 basic_erase_yn 값을 Y로 업데이트
    UPDATE BASIC_BOARD
    SET basic_erase_yn = 'Y'
    WHERE basic_id = NEW.basic_post_id; -- BASIC_UPLOAD_FILE 테이블의 board_id와 매칭
END$$

DELIMITER ;
