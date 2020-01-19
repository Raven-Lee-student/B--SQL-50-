-- 3、查询所有学生的学号、姓名、选课数、总成绩

SELECT a.s_id, a.s_name, count(c_id) as c_count, 
sum(case when b.s_score is Null then 0 else b.s_score end) as score_sum
FROM student as a 
left join score as b on a.s_id = b.s_id
group by a.s_id, a.s_name

-- 注意case的使用使得程序更加完备
-- SELECT 后面最好是 group by的字段及统计学函数，最好不要出现其他字段