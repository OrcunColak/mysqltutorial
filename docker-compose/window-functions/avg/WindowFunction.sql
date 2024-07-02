--https://blog.stackademic.com/mysql-window-functions-are-so-useful-f97d6606544e
CREATE TABLE `scores` (
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `subject` varchar(20) COLLATE utf8_bin NOT NULL,
  `score` int(3) NOT NULL
);

INSERT INTO scores (name, subject, score) VALUES ('Student1', 'Chemistry', 75);
INSERT INTO scores (name, subject, score) VALUES ('Student2', 'Biology', 92);
INSERT INTO scores (name, subject, score) VALUES ('Student3', 'Physics', 87);
INSERT INTO scores (name, subject, score) VALUES ('Student4', 'Mathematics', 68);
INSERT INTO scores (name, subject, score) VALUES ('Student5', 'English', 91);
INSERT INTO scores (name, subject, score) VALUES ('Student6', 'Chemistry', 58);
INSERT INTO scores (name, subject, score) VALUES ('Student7', 'Physics', 79);
INSERT INTO scores (name, subject, score) VALUES ('Student8', 'Mathematics', 90);
INSERT INTO scores (name, subject, score) VALUES ('Student9', 'Mathematics', 45);

-- calculating average score of each subject give it. Sort it in descending way and give it a rank
SELECT
  name,
  subject,
  score,
  AVG(score) OVER (PARTITION BY subject) AS average_score_per_subject,
  RANK() OVER (ORDER BY score DESC) AS score_rank
FROM scores
ORDER BY score DESC;