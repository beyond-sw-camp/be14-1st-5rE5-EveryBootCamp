INSERT INTO blocklist(blc_date, blc_reason, blc_action, blc_member_id)
SELECT NOW(), '신고 누적 5회 초과', '계정 정지', 131;