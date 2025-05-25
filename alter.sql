-- Active: 1748154352406@@127.0.0.1@5432@ph
SELECT * FROM person;
ALTER TABLE person
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;
INSERT INTO person VALUES(4, 'test', 30);
INSERT INTO person VALUES(5, 'test1', 26, 'test1@email.com');
ALTER TABLE person
    DROP COLUMN email ;
ALTER TABLE person
    RENAME COLUMN age TO user_age;
ALTER TABLE person
    alter COLUMN user_name type VARCHAR(50);
ALTER TABLE person
    ALTER COLUMN user_age SET NOT NULL;
ALTER TABLE person
    ALTER COLUMN user_age DROP NOT NULL;
ALTER TABLE person
    ADD CONSTRAINT unique_person_user_age UNIQUE(user_age);
ALTER TABLE person
    DROP CONSTRAINT unique_person_user_age;

TRUNCATE TABLE person;
DROP Table person;

