-- 공식 일정 검색 
SELECT 
          sh_schedule_content,
          sh_schedule_start_date,
          sh_schedule_end_date,
          cardinal_id
 FROM shared_schedule
WHERE sh_schedule_content LIKE '%회의%';                                                 
 