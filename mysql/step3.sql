-- 3-1.把peoples表中school不是GDUFS的人全部找出来？（包括school为NULL的人）写出MySQL语句。
select *from people where school
-- 3-2.查找计算机系每次考试学生的平均成绩(最终显示学生姓名, 考试名称, 平均分)。
-- 3-3.查找女学霸（考试平均分达到80分或80分以上的女生的姓名, 分数）。
select name,grade from exam inner join student on exam.student_ID =student.ID 
where sex='f' and avg(grade)=80 or avg(grade)>80;

-- 3-4.找出人数最少的院系以及其年度预算。
select distinct student.dept_name,budget from student left join department on student.dept_name=department.dept_name where count(student.dept_name)=(select min(count(student.dept_name) from student);

-- 3-5.计算机系改名了，改成计算机科学系（comp. sci.），写出mysql语句。
update department set dept_name='computer.sci.' where dept_name='computer';
-- 3-6.修改每个系的年度预算，给该系的每个学生发2000元奖金。（修改每个系的年度预算为 原预算+该系人数*2000）。
update department set budget=budget + count(student.ID)*2000;
-- 3-7.向department表中插入一条数据, dept_name属性的值为avg_budget, building为空, 年度预算为所有院系的年度预算平均值.
insert into department values('avg_budget',NULL,avg(budget));
-- 3-8. 删除计算机系中考试成绩平均分低于70的学生.
delete from (
select ID,dept_name from student) as T2 
left join (
select distinct student_ID,grade from exam ) as T3
on T2.ID = T3.student_ID
where T2.dept_name ='computer'and avg(T3.grade) <70;
-- 3-9.找出所有正在谈恋爱,但是学习成绩不佳(考试平均分低于75)的学生,强制将其情感状态改为单身.
select distinct student_ID from exam where avg(grade)<75 as T4,
select name from student where student.ID =T4.student_ID and emotion_state ='loving' as T5,
update student set emotion_state='single' where student.name =T5.name;
-- 3-10(选做). 对每个学生, 往exam表格中插入名为Avg_Exam的考试, 考试分数为之前学生参加过考试的平均分.
-- 3-10answer:
