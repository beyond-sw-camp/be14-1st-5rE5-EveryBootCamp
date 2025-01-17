SELECT
       emp_cmt_id
     , emp_cmt_content
     , emp_cmt_date
     , emp_cmt_anonym_yn
     , emp_cmt_erase_yn
     , emp_post_id
     , emp_cmt_writer
     , ref_emp_cmt_id
  FROM emp_info_cmt
 WHERE emp_post_id = 1;