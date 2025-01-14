-- 예시 1: 회원 ID 1이 책 ID 5 (책: '로미오와 줄리엣')를 대출
-- 예시 2: 회원 ID 2가 책 ID 10 (책: '어린 왕자')를 대출
INSERT INTO LIBRARY (lib_member_id, lib_book_id, lib_start_date) VALUES
(1, 5, '2025-01-14', 'Y'),
(2, 10, '2025-01-14', DEFAULT);