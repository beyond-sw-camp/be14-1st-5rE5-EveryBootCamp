DELIMITER $$

CREATE PROCEDURE increment_view_count(IN post_id INT)
BEGIN
    -- 게시글의 view_count 증가
    UPDATE BASIC_BOARD
    SET basic_view = basic_view + 1
    WHERE basic_id = post_id;
END$$

DELIMITER ;