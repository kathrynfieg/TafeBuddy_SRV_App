-- list of student grades
SELECT s.StudentID, s.GivenName, s.LastName, sg.Grade, sg.CRN, crnd.SubjectCode, sub.SubjectDescription    
FROM student_grade as sg INNER JOIN student as s
ON sg.StudentID = s.StudentID
INNER JOIN crn_detail as crnd
ON sg.CRN = crnd.CRN
INNER JOIN subject as sub
ON crnd.SubjectCode = sub.SubjectCode
WHERE s.StudentID = '001061267';