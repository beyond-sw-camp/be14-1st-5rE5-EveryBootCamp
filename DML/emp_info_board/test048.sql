SELECT
    a.emp_id
     , a.emp_title
     , a.emp_content
     , a.emp_date
     , a.emp_view
     , a.emp_anonym_yn
     , b.member_name
 FROM emp_info_board a
 JOIN member b on (a.emp_writer = b.member_id)
WHERE a. emp_id = 2;