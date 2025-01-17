-- 공식 일정 삭제

DELETE FROM shared_schedule
WHERE sh_schedule_content = '전체 프로젝트 회의'
  AND sh_schedule_start_date = '2024-01-01'
  AND sh_schedule_end_date = '2024-01-02'
  AND cardinal_id = 1;
