select * from `subject`
where credit = (
  select max(credit)
  from `subject`
);

select`subject`.SubID,`subject`.SubName, max(mark)
from `subject`
join mark on `subject`.SubID = mark.SubId
group by `subject`.SubName, `subject`.SubID
having max(mark) >= all (select max(mark) from mark group by mark.SubId);

select student.StudentName, student.StudentID, AVG(mark)
from student
join mark on student.StudentId = mark.StudentId
group by student.StudentName, student.StudentID 
order by AVG(mark) desc
