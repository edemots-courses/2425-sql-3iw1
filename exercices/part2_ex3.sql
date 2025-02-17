-- 1.
SELECT
    purchase_time,
    CASE
        WHEN purchase_time <= timestamp '2016-01-31' THEN 'ancien'
        WHEN purchase_time BETWEEN timestamp '2016-02-01' AND timestamp '2016-02-10' THEN 'périmé'
        -- WHEN purchase_time > '2016-02-10' THEN 'actuel'
        ELSE 'actuel'
    END AS etiquette
FROM student_can_shop
ORDER BY purchase_time;

-- 2.
SELECT
    name,
    -- CASE
    --     WHEN id = 1 THEN 'lab_yaka'
    --     WHEN id = 2 THEN 'crocus'
    --     WHEN id = 3 THEN 'dispenser'
    -- END AS label
    CASE id
        WHEN 1 THEN 'lab_yaka'
        WHEN 2 THEN 'crocus'
        WHEN 3 THEN 'dispenser'
    END AS label
FROM shop
ORDER BY label;
