-- 멘토방 조회  test - 064
SELECT
       a.mfr_id
     , a.menti_id
     , a.mfr_accept_yn
  FROM mentee_from_mentoring a
  JOIN MENTORING b on a.mfr_id = b.mtr_id
 WHERE a.mfr_id = 5
   AND a.mfr_accept_yn = 'y';
