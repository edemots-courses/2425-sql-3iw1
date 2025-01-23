-- 1.
SELECT firstname, lastname
FROM student
WHERE firstname LIKE 'J%';

-- 2.
SELECT firstname, lastname
FROM student
WHERE LENGTH(firstname) <= 5;

-- 3.
SELECT firstname, lastname
FROM student
-- WHERE LOWER(firstname) = 'arnaud';
WHERE firstname ILIKE 'ArNaUd';
