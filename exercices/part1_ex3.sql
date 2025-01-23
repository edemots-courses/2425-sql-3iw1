-- 1.
-- INSERT INTO can
-- VALUES (DEFAULT, 'Red Bull', 33),
--         (DEFAULT, 'jus de pomme', 33);
INSERT INTO can (capacity_cl, name)
VALUES (33, 'Red Bull'),
        (33, 'jus de pomme');

-- 2.
INSERT INTO student (login, firstname, lastname, male)
VALUES ('edemots', 'Eliot', 'Demots', TRUE),
        ('toto', 'Toto', NULL, TRUE),
        ('titi', NULL, 'Titi', FALSE);

-- 3.
UPDATE can
SET name = 'jus d''ananas'
WHERE id = 12;

-- 4.
DELETE FROM can
-- WHERE name = 'Red Bull'
WHERE id = 11;
