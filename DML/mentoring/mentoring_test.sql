-- 멘토링 등록
INSERT
INTO MENTORING
(
    mentor_id
)
VALUES
    (
        105
    );

-- 멘토방 목록
SELECT
       mtr_id
     , mentor_id
FROM MENTORING;

-- 멘토방 조회
SELECT
       a.mfr_id
     , a.menti_id
     , a.mfr_accept_yn
  FROM mentee_from_mentoring a
  JOIN MENTORING b on a.mfr_id = b.mtr_id
 WHERE a.mfr_id = 5
   AND a.mfr_accept_yn = 'y';

-- 멘토링 신청
INSERT
INTO MENTEE_FROM_MENTORING
(
    mfr_id,menti_id
)
VALUES
    (
        6, 125
    );

-- 멘토링 요청 수락
UPDATE MENTEE_FROM_MENTORING
SET mfr_accept_yn = 'y'
where menti_id = 125;

-- 멘토링 취소
DELETE
FROM MENTEE_FROM_MENTORING
WHERE menti_id = 125;

-- 멘토링 삭제
DELETE
FROM MENTORING
WHERE mentor_id = 105;

