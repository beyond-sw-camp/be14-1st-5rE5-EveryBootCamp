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

INSERT
  INTO basic_upload_file
(
 basic_origin_file_name, basic_mdf_file_name, basic_file_extension, basic_post_id
)
VALUES
(
 '오레오', CONCAT('오레오', '_', DATE_FORMAT(NOW(), '%Y%m%d_%H%i%S')), 'png', 11
);

-- 데이터 조회
SELECT * FROM basic_upload_file ORDER BY basic_file_id DESC;