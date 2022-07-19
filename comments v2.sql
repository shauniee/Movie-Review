/*CREATE TABLE IF NOT EXISTS movie_review.comment (
    `_id` INT,
    `movieId` INT,
    `movie` VARCHAR(28) CHARACTER SET utf8,
    `username` VARCHAR(20) CHARACTER SET utf8,
    `review` VARCHAR(7362) CHARACTER SET utf8,
    `rating` INT,
    `dataPosted` VARCHAR(65) CHARACTER SET utf8
);*/
use movie_review;
CREATE TABLE IF NOT EXISTS movie_review.comment (
    `_id` INT NOT NULL AUTO_INCREMENT,
    `movieId` INT,
    `movie` VARCHAR(255) CHARACTER SET utf8,
    `username` VARCHAR(20) CHARACTER SET utf8,
    `review` TEXT(1024) CHARACTER SET utf8,
    `rating` INT,
    `datePosted` VARCHAR(65) CHARACTER SET utf8,
PRIMARY KEY (`_id`),
  CONSTRAINT `FK_movieId`
    FOREIGN KEY (`movieId`)
    REFERENCES `movie_review`.`movie` (`_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


INSERT INTO comment(`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (1,13,'All I See Is You ','Alice','Go watch it',4, 'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`)  VALUES (2,18,'Chasing The Dragon ','Wayne','Not bad',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (5,11,'The Promise ','Ric','Nice movie!',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (8,19,'Happy Death Day ','Money money pukimak','8==D',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (11,10,'My Little Pony: The Movie ','Cute movie','Harry',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (13,17,'Brad`s Status ','Brad','SingleFeelsBadMan',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (15,33,'Earth: One Amazing Day ','Good','test',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (17,13,'All I See Is You ','David','Not too bad',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (18,2,'Battle Of The Sexes ','kk','jgs',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (19,10,'My Little Pony: The Movie ','Ang Yong Boon','HELLO',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (20,10,'My Little Pony: The Movie ','john lau','i have a hole in my head',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (22,13,'All I See Is You ','zakum','lol @vonleon maplestory ',1,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (23,13,'All I See Is You ','Von Leon','but i don''t see you',3,n'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (24,15,'American Assassin ','Jane','Tim',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (25,15,'American Assassin ','Roy','Tim',1,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (27,15,'American Assassin ','.','.',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (28,15,'American Assassin ','Lyn',NULL,0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (31,15,'American Assassin ','Mike',NULL,0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`)  VALUES (34,9,'Marvel`s Thor: Ragnarok ','Kaiser Von Sqs','I wanna watch this!',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (35,9,'Marvel`s Thor: Ragnarok ','Memoria','I love this movie!',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (37,31,'The Snowman ','Tom','Good movie',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (38,31,'The Snowman ','Mary','I love it',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (40,10,'My Little Pony: The Movie ','Peter','Go watch it',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (41,15,'American Assassin ','Tracy','Boring',0,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (42,15,'American Assassin ','Jane','qwertyuiop',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (43,12,'Ah Boys To Men 4 ','Lisa ','ji',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (44,29,'Paddington 2 ','Testing','Testing',4,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (45,15,'American Assassin ','Mark','xczc',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (46,9,'Marvel`s Thor: Ragnarok ','Jim','THank you come again',3,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (47,10,'My Little Pony: The Movie ','Simon','Very interesting',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');
INSERT INTO comment (`_id`, `movieId`, `movie`, `username`, `review`, `rating` ,`datePosted`) VALUES (52,10,'My Little Pony: The Movie ','Simon','Very interesting',5,'Wed Sep 05 2018 15:50:54 GMT+0800 (Malay Peninsula Standard Time)');