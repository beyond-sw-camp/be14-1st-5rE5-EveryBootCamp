SELECT
    basic_id
     , basic_title
     , basic_content
     , basic_date
     , basic_view
     , basic_file_yn
     , basic_anonym_yn
     , basic_erase_yn
FROM BASIC_BOARD
WHERE basic_writer = 101;

SELECT
    emp_id
     , emp_title
     , emp_content
     , emp_date
     , emp_view
     , emp_anonym_yn
     , emp_erase_yn
FROM EMP_INFO_BOARD
WHERE emp_writer = 101;

SELECT
    study_id
     , study_title
     , study_content
     , study_date
     , study_view
     , study_complete_yn
     , study_erase_yn
FROM STUDY_BOARD
WHERE study_writer = 101;