CREATE TABLE `user`(
`user_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '사용자번호',
`user_id` VARCHAR(20) NOT NULL COMMENT '사용자 아이디',
`user_pw` VARCHAR(20) NOT NULL COMMENT '사용자 비밀번호',
`user_name` VARCHAR(10) NOT NULL COMMENT '사용자 이름',
`user_email` VARCHAR(40) NOT NULL COMMENT '사용자 이메일',
`user_phone` CHAR(13) NOT NULL COMMENT '사용자 연락처',
`user_alias` VARCHAR(20) NOT NULL COMMENT '사용자 별명',
`user_grant` VARCHAR(10) NOT NULL COMMENT '사용자 권한',
`user_th` INT NOT NULL COMMENT '기수',
`user_part` VARCHAR(8) NOT NULL COMMENT '파트'
);

SELECT * FROM notice_board;

CREATE TABLE `user_grant`(
`grant_id` VARCHAR(10) PRIMARY KEY COMMENT '권한 아이디',
`grant_name` VARCHAR(10) NOT NULL COMMENT '권한 이름'
);

CREATE TABLE `file_info`(
`id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '파일 아이디',
`type` CHAR(10) NOT NULL COMMENT '파일 타입',
`real_path` VARCHAR(50) COMMENT '파일 절대경로',
`virtual_path` VARCHAR(50) COMMENT '파일 상대경로',
`board_type` VARCHAR(20) COMMENT '게시판 타입',
`board_number` INT  COMMENT '게시판 글번호'
);

CREATE TABLE `notice_board`(
`nb_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '글 번호',
`nb_name` VARCHAR(50) NOT NULL COMMENT '글 이름',
`nb_content` TEXT NOT NULL COMMENT '글 내용',
`nb_date` DATE NOT NULL COMMENT '최종 수정일',
`nb_hit` INT NOT NULL COMMENT '조회수',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `free_board`(
`fb_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '글 번호',
`fb_name` VARCHAR(50) NOT NULL COMMENT '글 이름',
`fb_content` TEXT NOT NULL COMMENT '글 내용',
`fb_date` DATE NOT NULL COMMENT '최종 수정일',
`fb_hit` INT NOT NULL COMMENT '조회수',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `guest_board`(
`gb_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '글 번호',
`gb_name` VARCHAR(50) NOT NULL COMMENT '글 이름',
`gb_content` TEXT NOT NULL COMMENT '글 내용',
`gb_date` DATE NOT NULL COMMENT '최종 수정일',
`gb_hit` INT NOT NULL COMMENT '조회수',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `video_board`(
`vb_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '게시판 글번호',
`vb_name` VARCHAR(50) NOT NULL COMMENT '글 이름',
`vb_content` TEXT NOT NULL COMMENT '글 내용',
`vb_date` DATE NOT NULL COMMENT '최종 수정일',
`vb_hit` INT NOT NULL COMMENT '조회수',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `video_comment`(
`vc_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '게시판 글번호',
`vc_date` DATE NOT NULL COMMENT '최종 수정일',
`vc_content` TEXT NOT NULL COMMENT '글 내용',
`vb_number` INT NOT NULL COMMENT '글 번호',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `notice_comment`(
`nc_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '댓글 번호',
`nc_date` DATE NOT NULL COMMENT '최종 수정일',
`nc_content` TEXT NOT NULL COMMENT '댓글 내용',
`nb_number` INT NOT NULL COMMENT '게시판 글 번호',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `free_comment`(
`fc_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '댓글 번호',
`fc_date` DATE NOT NULL COMMENT '최종 수정일',
`fc_content` TEXT NOT NULL COMMENT '댓글 내용',
`fb_number` INT NOT NULL COMMENT '게시판 글 번호',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `photo_comment`(
`pc_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '댓글 번호',
`pc_date` DATE NOT NULL COMMENT '최종 수정일',
`pc_content` TEXT NOT NULL COMMENT '댓글 내용',
`pb_number` INT NOT NULL COMMENT '게시판 글 번호',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

CREATE TABLE `guest_comment`(
`pc_number` INT AUTO_INCREMENT PRIMARY KEY COMMENT '댓글 번호',
`pc_date` DATE NOT NULL COMMENT '최종 수정일',
`pc_content` TEXT NOT NULL COMMENT '댓글 내용',
`pb_number` INT NOT NULL COMMENT '게시판 글 번호',
`user_number` INT NOT NULL COMMENT '사용자 번호',
`user_alias` VARCHAR(10) NOT NULL COMMENT '사용자 별명',
FOREIGN KEY(user_number) REFERENCES USER(user_number) ON DELETE CASCADE
);

