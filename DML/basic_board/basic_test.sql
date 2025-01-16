-- 자유 게시글 목록
SELECT
    basic_id
     , basic_title
     , basic_content
     , basic_date
     , basic_view
     , basic_anonym_yn
     , basic_erase_yn
     , basic_writer
FROM BASIC_BOARD;

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

-- 자유 게시글 작성
INSERT INTO BASIC_BOARD
(
    basic_title, basic_content, basic_date, basic_writer
)
VALUES
    (
        '요즘 다이어트 시작했는데 너무 힘들어요ㅠㅠ', '한 달 전부터 다이어트를 시작했는데 생각보다 너무 힘듭니다. 야식도 참기 힘들고 운동도 귀찮고... 하지만 포기하지 않고 꾸준히 해보려고요. 다들 다이어트 성공 비결 있다면 공유해주세요!', NOW(), 101
    );

-- 자유 게시글 수정
UPDATE BASIC_BOARD
SET basic_title = '맛집 추천합니다', basic_content = '다이어트는 내일부터'
WHERE basic_id = 1;

-- 자유 게시글 삭제
UPDATE BASIC_BOARD
SET basic_erase_yn = 'y'
WHERE basic_id = 1;

-- 자유 게시글 검색
SELECT
    *
FROM basic_board
WHERE basic_title LIKE '%맛집%'
  AND basic_date BETWEEN '2024-01-01' AND '2025-01-31';

-- 자유 게시글 댓글 작성
INSERT INTO basic_CMT (basic_cmt_content, basic_cmt_date, basic_cmt_anonym_yn, basic_post_id, basic_cmt_writer, ref_basic_cmt_id)
VALUES
    ('여긴 왜 맛집 추천글이 아니죠?', '2024-03-15 10:25:30', 'y', 1, 101, NULL);

-- 자유 게시글 댓글 목록
SELECT
    basic_cmt_id
     , basic_cmt_content
     , basic_cmt_date
     , basic_post_id
     , basic_cmt_writer
FROM basic_cmt
WHERE basic_post_id = 1;

-- 자유 게시글 댓글 수정
UPDATE basic_cmt
SET basic_cmt_content = '안녕하세요'
WHERE basic_cmt_writer = 120;

-- 자유 게시글 댓글 삭제
UPDATE basic_board
SET basic_erase_yn = 'y'
WHERE basic_id = 5;

-- 자유 게시글 신고
INSERT
INTO basic_report
(
    basic_rpt_date, basic_rpt_reason_id, basic_rpt_member_id, basic_post_id, basic_cmt_id
)
VALUES
    (
        NOW(), 3, 110, 2, NULL
    );

-- 자유 게시글 댓글 신고
INSERT
INTO basic_report
(
    basic_rpt_date, basic_rpt_reason_id, basic_rpt_member_id, basic_post_id, basic_cmt_id
)
VALUES
    (
        NOW(), 7, 121, NULL, 3
    );
