
-- 자유 게시글 조회
SELECT
    basic_id
     , basic_title
     , basic_content
     , basic_date
     , basic_view
     , basic_anonym_yn
FROM basic_board
WHERE basic_id = 5;
