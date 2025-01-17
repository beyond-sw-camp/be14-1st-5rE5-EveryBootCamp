-- 자유 게시글 댓글 목록  test 25
SELECT
    basic_cmt_id
     , basic_cmt_content
     , basic_cmt_date
     , basic_post_id
     , basic_cmt_writer
FROM basic_cmt
WHERE basic_post_id = 1;
