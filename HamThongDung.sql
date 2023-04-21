select Address, count(StudentID) as 'Số lượng học sinh'
from student
group by address;

select student.StudentName, student.StudentID, AVG(mark)
from student
join mark on student.StudentId = mark.StudentId
group by student.StudentName, student.StudentID; 

select student.StudentName, student.StudentID, AVG(mark)
from student
join mark on student.StudentId = mark.StudentId
group by student.StudentName, student.StudentID 
having AVG(mark) > 15;

select student.StudentName, student.StudentID, AVG(mark)
from student
join mark on student.StudentId = mark.StudentId
group by student.StudentName, student.StudentID 
having AVG(mark) >= all (select avg(mark) from mark group by mark.StudentId)