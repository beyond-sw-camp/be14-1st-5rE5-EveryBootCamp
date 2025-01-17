-- 공식 일정 수정
UPDATE shared_schedule
SET 
    sh_schedule_content = '소규모 프로젝트 회의 수정'
WHERE
   sh_schedule_content = '디자인 팀 회의'
; 