-- 자유 게시글 파일 
"if file_yn = 'y' then

insert
into BASIC_UPLOAD_FILE
(
basic_origin_file_name, basic_mdf_file_name, basic_file_extension, basic_post_id)
values
(
'오늘의 식단', '오늘의식단_20250117095241', 'jpg', 2
);

end if"