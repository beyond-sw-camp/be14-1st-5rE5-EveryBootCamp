DELIMITER $$

CREATE PROCEDURE increment_view_count_EMP_INFO(IN post_id INT)
BEGIN
    -- 게시글의 view 증가
    UPDATE EMP_INFO_BOARD
    SET emp_view = emp_view + 1
    WHERE emp_id = post_id;

    -- 게시글의 내용 보기
    SELECT
           emp_id
         , emp_title
         , emp_content
         , emp_date
         , emp_view
         , emp_writer
    FROM EMP_INFO_board
    WHERE emp_id = post_id;
END$$

DELIMITER ;

CALL increment_view_count_EMP_INFO(5);