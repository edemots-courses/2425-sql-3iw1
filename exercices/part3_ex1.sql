-- 1.
SELECT male, COUNT(*) as count
FROM student
GROUP BY male;

-- 2.
SELECT shop.name, ROUND(CAST(AVG(price) AS numeric), 2) AS avg_price
FROM shop_can
INNER JOIN shop ON shop.id = shop_can.shop_id
GROUP BY shop.name, shop_id;

-- 3.
SELECT login, ROUND(CAST(SUM(price) AS numeric), 2) as total_price
FROM student_can_shop
INNER JOIN shop_can ON shop_can.shop_id = student_can_shop.shop_id
    AND shop_can.can_id = student_can_shop.can_id
GROUP BY login
ORDER BY total_price DESC, login ASC;
