-- 멘토링 일정 삭제 

DELETE FROM mentor_schedule
WHERE 
    mt_schedule_start_date = '2024-01-03' AND 
    mt_schedule_end_date = '2024-01-05' AND 
    mtr_id = 1;
