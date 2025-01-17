
-- 자유 게시글 검색  test 23
SELECT
    *
FROM basic_board
WHERE basic_title LIKE '%맛집%'
  AND basic_date BETWEEN '2024-01-01' AND '2025-01-31';
