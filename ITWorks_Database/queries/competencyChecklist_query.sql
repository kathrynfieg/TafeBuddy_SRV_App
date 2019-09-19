-- 1. List of all competencies a student has taken
SELECT s.StudentID, s.GivenName, s.LastName, c.TafeCompCode, c.NationalCompCode, c.CompetencyName, sg.Grade
FROM student AS s INNER JOIN student_grade AS sg
ON s.StudentID = sg.StudentID
INNER JOIN crn_detail as crnd
ON sg.CRN = crnd.CRN
INNER JOIN competency AS c
ON crnd.TafeCompCode = c.TafeCompCode
WHERE s.StudentID = '001061267';

-- 2. List of all competencies in a qualificaion
SELECT q.QualCode, q.NationalQualCode, q.TafeQualCode, q.QualName, c.TafeCompCode, c.NationalCompCode, c.CompetencyName, cq.CompTypeCode
FROM competency AS c INNER JOIN competency_qualification as cq
ON c.NationalCompCode = cq.NationalCompCode
INNER JOIN qualification AS q
ON q.QualCode = cq.QualCode
WHERE q.QualCode = 'D_SD15';

-- 3. Combine the two
SELECT s.StudentID, s.GivenName, s.LastName, q.QualCode, q.NationalQualCode, q.TafeQualCode, q.QualName, c.TafeCompCode, c.NationalCompCode, c.CompetencyName, cq.CompTypeCode, sg.Grade, crnd.SubjectCode
FROM competency AS c INNER JOIN competency_qualification as cq
ON c.NationalCompCode = cq.NationalCompCode
INNER JOIN qualification AS q
ON q.QualCode = cq.QualCode
RIGHT JOIN crn_detail as crnd
ON crnd.TafeCompCode = c.TafeCompCode
RIGHT JOIN student_grade as sg
ON sg.CRN = crnd.CRN AND sg.StudentID = '001061267'
RIGHT JOIN student as s
ON s.StudentID = sg.StudentID
WHERE q.QualCode = 'D_SD15';
