-- 개인 일정 수정

UPDATE personal_schedule
SET 
    psn_schedule_content = '단체 미팅'
WHERE
   psn_schedule_content = '고객 미팅'
; 