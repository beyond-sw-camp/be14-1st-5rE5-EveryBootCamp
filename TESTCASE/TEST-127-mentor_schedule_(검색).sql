-- 멘토링 일정 검색 

SELECT mt_schedule_start_date, mt_schedule_end_date, mtr_id
  FROM mentor_schedule
  WHERE mtr_id = 5 ;
