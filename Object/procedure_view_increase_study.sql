DELIMITER $$

CREATE PROCEDURE increment_view_count_study(IN post_id INT)
BEGIN
    -- 게시글의 view 증가
    UPDATE STUDY_BOARD
    SET study_view = study_view + 1
    WHERE study_id = post_id;

    -- 게시글의 내용 보기
    SELECT
           study_id
         , study_title
         , study_content
         , study_date
         , study_view
         , study_writer
    FROM STUDY_board
    WHERE study_id = post_id;
END$$

DELIMITER ;

CALL increment_view_count_study(5);