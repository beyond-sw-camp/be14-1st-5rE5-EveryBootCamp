DELIMITER $$

CREATE OR REPLACE TRIGGER after_basic_upload_insert
    AFTER INSERT ON BASIC_UPLOAD_FILE
    FOR EACH ROW
BEGIN
    -- BASIC_BOARD 테이블의 basic_file_yn 값을 Y로 업데이트
    UPDATE BASIC_BOARD
    SET basic_file_yn = 'Y'
    WHERE basic_id = NEW.basic_post_id;
END$$

DELIMITER ;