-- 개인 일정 검색

SELECT 
          psn_schedule_content,
          psn_schedule_start_date,
          psn_schedule_end_date,
          psn_schedule_member_id
 FROM personal_schedule
WHERE psn_schedule_content LIKE '%회의%';