/*
💡 Affiche tous les étudiants qui n'ont pas d'adresse
et toutes les adresses qui ne sont pas liées à un étudiant.

SELECT * FROM student
FULL JOIN address ON student.address_id = address.id
WHERE student.address_id IS NULL;
*/

-- 1.
SELECT login, address.*
FROM student LEFT JOIN address ON student.address_id = address.id;
-- =
SELECT login, address.*
FROM address RIGHT JOIN student ON address.id = student.address_id
