                             -- IN keyword
-- IN keyword is used to get particular Row values.
SELECT *
FROM stud
WHERE name IN ('Claire', 'Kate', 'Mike');
                 
SELECT *
FROM stud
WHERE major IN ('Biology', 'Chemistry');

SELECT *
FROM stud
WHERE major IN ('Biology', 'Chemistry') AND stud_id > 2;

                                 -- IN keyword (Company Database)
SELECT *
FROM employee
WHERE emp_id IN(100,106,102);