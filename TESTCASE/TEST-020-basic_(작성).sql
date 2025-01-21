
-- 자유 게시글 작성  test 20
INSERT INTO BASIC_BOARD
(
    basic_title, basic_content, basic_date, basic_writer
)
VALUES
    (
        '요즘 다이어트 시작했는데 너무 힘들어요ㅠㅠ', '한 달 전부터 다이어트를 시작했는데 생각보다 너무 힘듭니다. 야식도 참기 힘들고 운동도 귀찮고... 하지만 포기하지 않고 꾸준히 해보려고요. 다들 다이어트 성공 비결 있다면 공유해주세요!', NOW(), 101
    );
