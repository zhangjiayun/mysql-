-- 创建department表
create table department(
-- 定义类型为varchar(20)的属性dept_name 设为主键
       dept_name varchar(20) NOT NULL primary key,
-- 定义类型为varchar(20)的属性building
       building varchar(20),
-- 定义类型为int(30)的属性budget
       budget int(30)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- 将编码定为utf8，适用于中文输入
SET SQL_SAFE_UPDATES =0;
-- 将mysql的权限关闭掉，从而能进行增删改等操作

-- 对department表插入相关数据
insert into department values('computer','Building_A',12000);
insert into department values('biology','Building_B',24000);
insert into department values('physics','Building_C',28000);
insert into department values('new','Building_D',8000);
insert into department values('math','Building_E',35000);
select*from department;
delete from department;
drop table department;

-- 创建student表
create table student(
-- 定义类型为int的属性ID,设为自增，设为主键
       ID int NOT NULL auto_increment primary key,
-- 定义类型为varchar(45)的属性name
       name varchar(45) NOT NULL,
-- 定义类型为char(1)的属性sex
       sex char(1),
-- 定义类型为int(3)的属性age
       age int(3),
-- 定义类型为varchar(45)的属性emotion_state
       emotion_state varchar(45),
-- 定义类型为varchar(20)的属性dept_name
       dept_name varchar(20) NOT NULL,
-- 将属性dept_name设为外键，参照的是department表的属性dept_name
-- 父属性做删除操作对子属性没影响，做更改操作时，子属性也跟着改变
       foreign key(dept_name) references department(dept_name)
       ON DELETE NO ACTION ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 对student表插入相关数据
insert into student values(NULL,'廉萱妍','f',19,'loving','computer');
insert into student values(NULL,'荀良运','m',17,'single','computer');
insert into student values(NULL,'尹枫起','m',14,'loving','computer');
insert into student values(NULL,'皇甫梦心','f',13,'loving','computer');
insert into student values(NULL,'司马海禧','m',24,'loving','computer');
insert into student values(NULL,'薛珊柏','f',21,'single','biology');
insert into student values(NULL,'皇甫驰钊','m',21,'single','physics');
insert into student values(NULL,'骆谷震','m',23,'single','computer');
insert into student values(NULL,'吕禧逸','m',18,'single','biology');
insert into student values(NULL,'公孙子晨','m',20,'loving','physics');
insert into student values(NULL,'王凡康','m',21,'loving','physics');
insert into student values(NULL,'谢婷桃','f',21,'single','computer');
insert into student values(NULL,'寿雨华','f',20,'single','physics');
insert into student values(NULL,'昌菲婧','f',19,'loving','new');
insert into student values(NULL,'赵梓梓','m',22,'loving','biology');
insert into student values(NULL,'尉迟彩鑫','f',22,'single','new');
insert into student values(NULL,'毛骏钊','m',23,'single','new');
insert into student values(NULL,'吴腾梁','m',17,'loving','math');
insert into student values(NULL,'庞德骏','m',23,'loving','math');
insert into student values(NULL,'梅昭凡','f',18,'single','computer');

select*from student;
delete from student;
drop table student;

-- 创建exam表
create table exam(
-- 定义类型为int(3)的属性student_ID
       student_ID int(3) NOT NULL auto_increment,
-- 定义类型为varchar(20)的属性exam_name
       exam_name varchar(20) NOT NULL,
-- 定义类型为int(3)的属性grade
       grade int(3),
-- 将属性student_ID设为外键，参照的是student表的属性ID
-- 父属性做删除操作对子属性没影响，做更改操作时，子属性也跟着改变 
       foreign key(student_ID) references student(ID) 
       ON DELETE NO ACTION ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 对exam表插入相关数据
insert into exam values(1,'FirstExam',62);
insert into exam values(1,'SecondExam',70);
insert into exam values(1,'ThirdExam',98);
insert into exam values(1,'FinalExam',93);
insert into exam values(2,'FirstExam',46);
insert into exam values(2,'SecondExam',97);
insert into exam values(2,'ThirdExam',68);
insert into exam values(2,'FinalExam',60);
insert into exam values(3,'FirstExam',64);
insert into exam values(3,'SecondExam',48);
insert into exam values(3,'ThirdExam',94);
insert into exam values(3,'FinalExam',68);
insert into exam values(4,'FirstExam',69);
insert into exam values(4,'SecondExam',100);
insert into exam values(4,'ThirdExam',97);
insert into exam values(4,'FinalExam',56);
insert into exam values(5,'FirstExam',91);
insert into exam values(5,'SecondExam',86);
insert into exam values(5,'ThirdExam',58);
insert into exam values(5,'FinalExam',81);
insert into exam values(6,'FirstExam',71);
insert into exam values(6,'SecondExam',63);
insert into exam values(6,'ThirdExam',96);
insert into exam values(6,'FinalExam',60);
insert into exam values(7,'FirstExam',60);
insert into exam values(7,'SecondExam',48);
insert into exam values(7,'ThirdExam',63);
insert into exam values(7,'FinalExam',74);
insert into exam values(8,'FirstExam',86);
insert into exam values(8,'SecondExam',99);
insert into exam values(8,'ThirdExam',73);
insert into exam values(8,'FinalExam',79);
insert into exam values(9,'FirstExam',94);
insert into exam values(9,'SecondExam',61);
insert into exam values(9,'ThirdExam',49);
insert into exam values(9,'FinalExam',72);
insert into exam values(10,'FirstExam',62);
insert into exam values(10,'SecondExam',67);
insert into exam values(10,'ThirdExam',68);
insert into exam values(10,'FinalExam',78);
insert into exam values(11,'FirstExam',94);
insert into exam values(11,'SecondExam',60);
insert into exam values(11,'ThirdExam',93);
insert into exam values(11,'FinalExam',60);
insert into exam values(12,'FirstExam',98);
insert into exam values(12,'SecondExam',48);
insert into exam values(12,'ThirdExam',69);
insert into exam values(12,'FinalExam',86);
insert into exam values(13,'FirstExam',46);
insert into exam values(13,'SecondExam',84);
insert into exam values(13,'ThirdExam',47);
insert into exam values(13,'FinalExam',83);
insert into exam values(14,'FirstExam',52);
insert into exam values(14,'SecondExam',97);
insert into exam values(14,'ThirdExam',91);
insert into exam values(14,'FinalExam',84);
insert into exam values(15,'FirstExam',85);
insert into exam values(15,'SecondExam',68);
insert into exam values(15,'ThirdExam',100);
insert into exam values(15,'FinalExam',52);
insert into exam values(16,'FirstExam',59);
insert into exam values(16,'SecondExam',58);
insert into exam values(16,'ThirdExam',95);
insert into exam values(16,'FinalExam',58);
insert into exam values(17,'FirstExam',92);
insert into exam values(17,'SecondExam',93);
insert into exam values(17,'ThirdExam',100);
insert into exam values(17,'FinalExam',49);
insert into exam values(18,'FirstExam',87);
insert into exam values(18,'SecondExam',81);
insert into exam values(18,'ThirdExam',93);
insert into exam values(18,'FinalExam',58);
insert into exam values(19,'FirstExam',85);
insert into exam values(19,'SecondExam',88);
insert into exam values(19,'ThirdExam',91);
insert into exam values(19,'FinalExam',62);
insert into exam values(20,'FirstExam',88);
insert into exam values(20,'SecondExam',78);
insert into exam values(20,'ThirdExam',94);
insert into exam values(20,'FinalExam',100);
select *from exam;
delete from exam;
drop table exam;