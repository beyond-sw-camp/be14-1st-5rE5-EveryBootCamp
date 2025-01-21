-- 자유 게시글 신고  test 28
INSERT
INTO basic_report
(
    basic_rpt_date, basic_rpt_reason_id, basic_rpt_member_id, basic_post_id, basic_cmt_id
)
VALUES
    (
        NOW(), 3, 110, 2, NULL
    );
