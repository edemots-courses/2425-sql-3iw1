DROP TABLE can;
DROP TABLE student;

-- 1.
CREATE TABLE can (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    capacity_cl INTEGER NOT NULL
    -- PRIMARY KEY(id)
);

-- 2.
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(64),
    lastname VARCHAR(64)
);

-- 3.
-- ALTER TABLE student
--     DROP COLUMN id,
--     ADD COLUMN login VARCHAR(8) PRIMARY KEY;
ALTER TABLE student
    ALTER COLUMN id TYPE VARCHAR(8),
    ALTER COLUMN id DROP DEFAULT;
ALTER TABLE student
    RENAME COLUMN id TO login;

-- 4.
CREATE TABLE student_can (
    student_login VARCHAR(8) REFERENCES student(login),
    can_id INT REFERENCES can(id)
    -- FOREIGN KEY(student_login) REFERENCES student(login),
    -- FOREIGN KEY(can_id) REFERENCES can(id),
);
