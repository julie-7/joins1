-- Active: 1737685679475@@_@5432@codex_julie_practice@public
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);
CREATE TABLE enrollments(
enrollment_id SERIAL PRIMARY KEY,
student_id INT REFERENCES students(student_id),
course TEXT NOT NULL
);
CREATE TABLE professors(
professor_id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
department TEXT NOT NULL
);
CREATE TABLE courses(
course_id SERIAL PRIMARY KEY,
course_name TEXT NOT NULL,
professor_id INT REFERENCES professors(professor_id)
);
INSERT INTO students (name) VALUES
('Alice'),
('Bob'),
('Cathy'),
('David');
INSERT INTO enrollments (student_id,course)VALUES
(1,'Math'),
(2,'Science'),
(3,'History'),
(4,'Art');
INSERT INTO professors(name,department)VALUES
('Dr.Smith','Mathematics'),
('Dr.Johnson','Science'),
('Dr.Lee','History');
INSERT INTO courses(Course_name,Professor_id)VALUES
('Math',1),
('Science',2),
('History',3),
('Art',NULL);
urses INNER JOIN professors on professors.professor_id = courses.professor_idSelect course_name,name from courses INNER JOIN professors on professors.professor_id = courses.professor_idSelect course_name,name from co