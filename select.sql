CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(5),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
    ('Alice', 'Smith', 18, 'A', 'Computer Science', 'alice.smith@example.com', '2006-03-15', 'A+', 'USA'),
    ('Bob', 'Johnson', 17, 'B', 'Mathematics', 'bob.johnson@example.com', '2007-09-22', 'B-', 'Canada'),
    ('Charlie', 'Brown', 19, 'C', 'Physics', 'charlie.brown@example.com', '2005-11-01', 'O+', 'UK'),
    ('Diana', 'Miller', 16, 'A', 'Chemistry', 'diana.miller@example.com', '2008-07-08', 'AB+', 'Australia'),
    ('Eve', 'Davis', 18, 'B', 'Biology', 'eve.davis@example.com', '2006-01-20', 'A-', 'Germany'),
    ('Frank', 'Garcia', 17, 'A', 'History', 'frank.garcia@example.com', '2007-05-10', 'O-', 'Spain'),
    ('Grace', 'Rodriguez', 19, 'A', 'Literature', 'grace.rodriguez@example.com', '2005-08-25', 'B+', 'Mexico'),
    ('Henry', 'Martinez', 16, 'B', 'Art', 'henry.martinez@example.com', '2008-02-14', 'A+', 'France'),
    ('Ivy', 'Hernandez', 18, 'C', 'Economics', 'ivy.hernandez@example.com', '2006-06-30', 'AB-', 'Brazil'),
    ('Jack', 'Lopez', 17, 'C', 'Geography', 'jack.lopez@example.com', '2007-12-05', 'O+', 'Argentina'),
    ('Karen', 'Gonzalez', 19, 'B', 'Music', 'karen.gonzalez@example.com', '2005-04-18', 'A-', 'Italy'),
    ('Liam', 'Perez', 16, 'C', 'Physical Education', 'liam.perez@example.com', '2008-10-03', 'B+', 'Portugal'),
    ('Mia', 'Sanchez', 18, 'A', 'Sociology', 'mia.sanchez@example.com', '2006-09-01', 'O+', 'Colombia'),
    ('Noah', 'Ramirez', 17, 'B', 'Psychology', 'noah.ramirez@example.com', '2007-03-28', 'A+', 'Peru'),
    ('Olivia', 'Torres', 19, 'C', 'Philosophy', 'olivia.torres@example.com', '2005-07-12', 'B-', 'Chile'),
    ('Peter', 'Flores', 16, 'A', 'Drama', 'peter.flores@example.com', '2008-01-05', 'O-', 'Ecuador'),
    ('Quinn', 'Rivera', 18, 'B', 'Political Science', 'quinn.rivera@example.com', '2006-11-29', 'AB+', 'Venezuela'),
    ('Rachel', 'Gomez', 17, 'A', 'Journalism', 'rachel.gomez@example.com', '2007-06-19', 'A-', 'Bolivia'),
    ('Sam', 'Diaz', 19, 'A', 'Architecture', 'sam.diaz@example.com', '2005-02-07', 'B+', 'Paraguay'),
    ('Tina', 'Cruz', 16, 'B', 'Fashion Design', 'tina.cruz@example.com', '2008-04-24', 'O+', 'Uruguay');

SELECT email as "Students Email", age FROM students;

SELECT * FROM students ORDER BY age ASC;

SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT country FROM students ORDER BY country ASC;

SELECT * FROM students 
    WHERE age > 18 AND (grade = 'A' OR grade = 'B');


SELECT * FROM students 
    WHERE country <> 'USA';

SELECT upper(concat(first_name, ' ', last_name)) as full_name FROM students;