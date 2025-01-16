-- 댓글 작성
INSERT INTO emp_info_cmt
(
    emp_cmt_content, emp_cmt_date, emp_cmt_anonym_yn, emp_post_id, emp_cmt_writer, ref_emp_cmt_id
)
VALUES
    (
        '프론트엔드 개발자 포지션에 관심이 있습니다. 지원 방법에 대해 자세히 알려주실 수 있을까요?', '2024-02-01', 'n', 1, 119, NULL
    );

-- 대댓글 작성
INSERT INTO emp_info_cmt
(
    emp_cmt_content, emp_cmt_date, emp_cmt_anonym_yn, emp_post_id, emp_cmt_writer, ref_emp_cmt_id
)
VALUES
    (
        '지원에 관심을 가져주셔서 감사합니다! 이력서와 포트폴리오를 recruit@xyzcompany.com으로 보내주시면 검토 후 연락드리겠습니다.', '2024-02-02', 'n', 1, 110, 21
    );