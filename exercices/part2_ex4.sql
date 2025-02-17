-- 1.
-- - perf.
/*
SELECT student.firstname, student.lastname, address.country
FROM student
-- INNER JOIN address ON student.address_id = address.id
INNER JOIN address ON address.id = student.address_id
WHERE address.country = 'United Kingdom';
*/

-- + perf.
SELECT student.firstname, student.lastname, address.country
FROM address
INNER JOIN student ON address.id = student.address_id
WHERE address.country = 'United Kingdom';

-- 2.
SELECT student_can_shop.login, can.name AS can_name, shop.name AS shop_name
FROM student_can_shop
INNER JOIN can ON can.id = student_can_shop.can_id
INNER JOIN shop ON shop.id = student_can_shop.shop_id;

-- 3.
SELECT student.firstname, student.lastname, purchase_time::date as purchase_date
FROM student_can_shop
-- INNER JOIN student ON student.login = student_can_shop.login
INNER JOIN student USING(login)
INNER JOIN can ON can.id = student_can_shop.can_id
WHERE can.name = 'Coke' OR can.name = 'Diet Coke';

-- 4.
SELECT shop.name AS shop_name, can.name AS can_name
FROM shop_can
INNER JOIN shop ON shop.id = shop_can.shop_id
INNER JOIN can ON can.id = shop_can.can_id
ORDER BY shop.name ASC;
