-- 2、查询平均成绩大于60分的学生的学号和平均成绩（简单，第二道重点）
USE mydb;
SELECT s_id,avg(s_score)  from score
group by s_id having avg(s_score)>60

