-- 1.
SELECT login, purchase_time::time as purchase_time
FROM student_can_shop
WHERE purchase_time::date = date '2016-01-25';

-- 2.
SELECT timestamp '2016-06-01 10:56';

-- 3.
SELECT timestamp '2016-06-01 10:56' - timestamp '2016-05-19' AS interval;

-- 4.
SELECT
    extract(day from purchase_time) as day,
    extract(month from purchase_time) as month,
    extract(year from purchase_time) as year
FROM student_can_shop
ORDER BY purchase_time DESC;
