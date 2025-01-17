DELIMITER $$

CREATE OR REPLACE PROCEDURE increment_view_count_BASIC(IN post_id INT)
BEGIN
    -- 게시글의 view 증가
    UPDATE BASIC_BOARD
    SET basic_view = basic_view + 1
    WHERE basic_id = post_id;

    -- 게시글의 내용 보기
    SELECT
           basic_id
         , basic_title
         , basic_content
         , basic_date
         , basic_view
         , basic_writer
      FROM basic_board
     WHERE basic_id = post_id;
END$$

DELIMITER ;

CALL increment_view_count_BASIC(5);