# 데이터 추가
# INSERT INTO BASIC_REPORT (basic_rpt_date, basic_rpt_reason_id, basic_rpt_member_id, basic_post_id, basic_cmt_id)
# VALUES
#     ('2024-02-20 13:01:49', 1, 131, 2, null);
# INSERT INTO EMP_INFO_REPORT (emp_rpt_date, emp_rpt_reason_id, emp_rpt_member_id, emp_post_id, emp_cmt_id)
# VALUES
#     ('2024-02-01', 10, 131, NULL, 1);
# INSERT INTO EMP_INFO_REPORT (emp_rpt_date, emp_rpt_reason_id, emp_rpt_member_id, emp_post_id, emp_cmt_id)
# VALUES
#     ('2024-03-01', 5, 131, 2, NULL);
# INSERT INTO EMP_INFO_REPORT (emp_rpt_date, emp_rpt_reason_id, emp_rpt_member_id, emp_post_id, emp_cmt_id)
# VALUES
#     ('2024-07-01', 10, 131, NULL, 1);
#
# INSERT INTO STUDY_REPORT (study_rpt_date, study_rpt_reason_id, study_rpt_member_id, study_post_id, study_cmt_id)
# VALUES
# ('2025-01-15 14:20:00', 1, 131, 1, NULL);

SELECT basic_post_id
     , basic_cmt_id
  FROM basic_report
 WHERE basic_rpt_member_id = 131;

SELECT emp_post_id
     , emp_cmt_id
  FROM emp_info_report
 WHERE emp_rpt_member_id = 131;

SELECT study_post_id
     , study_cmt_id
  FROM study_report
 WHERE study_rpt_member_id = 131;