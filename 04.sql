-- 4、查询姓“猴”的老师的个数
SELECT count(t_id)
FROM teacher
where t_name like '猴%'