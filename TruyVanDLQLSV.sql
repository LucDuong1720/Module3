select * from quanlysinhvien.student;

SELECT * FROM quanlysinhvien.student
where `status` = true;

Select * from quanlysinhvien.`subject`
where credit < 10;

select student.StudentID, student.StudentName, class.ClassName
from student 
join class on student.ClassID = class.ClassID
where class.ClassName = 'A1';

select student.StudentID, student.StudentName, `subject`.SubName, mark.Mark
from student
join mark on student.StudentID = mark.StudentID
join `subject` on `subject`.SubID = mark.SubID
where `subject`.SubName = 'CF';