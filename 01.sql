USE mydb;
-- 1.查询课程编号为“01”的课程比“02”的课程成绩高的所有学生的学号（重点）

SELECT a.s_id, c.s_name, a.s_score, b.s_score from
(
SELECT s_id, c_id,s_score from mydb.score where c_id='01' )
as a
inner join
(
SELECT s_id, c_id,s_score from mydb.score where c_id='02' )
as b
on a.s_id = b.s_id
inner join student as c on c.s_id = a.s_id
where a.s_score > b.s_score