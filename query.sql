USE QuanLySinhVien;

-- 1. Hiển thị tất cả sinh viên có tên bắt đầu bằng 'h'
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';

-- 2. Hiển thị thông tin lớp học có thời gian bắt đầu vào tháng 12
SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;

-- 3. Hiển thị thông tin môn học có Credit trong khoảng từ 3 đến 5
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

-- 4. Thay đổi ClassID của sinh viên có tên 'Hung' thành 2
UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

-- 5. Hiển thị StudentName, SubName, Mark
-- Sắp xếp Mark giảm dần, nếu trùng thì StudentName tăng dần
SELECT S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M ON S.StudentId = M.StudentId
JOIN Subject Sub ON M.SubId = Sub.SubId
ORDER BY M.Mark DESC, S.StudentName ASC;
