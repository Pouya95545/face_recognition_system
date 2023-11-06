CREATE TABLE user(
    id int PRIMARY KEY auto_increment, 
    name VARCHAR(64)  not null,
     email VARCHAR(64) not null unique ,
     password VARCHAR(64) not null,
     type VARCHAR(15) not null,
     role_id int not null
      );

CREATE TABLE Student (
    Id INT auto_increment PRIMARY KEY,
    Name VARCHAR(50) not null,
    lastName VARCHAR(64) not null,
    phone VARCHAR(15),

);

CREATE TABLE Teacher (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Course_Id INT
);

CREATE TABLE Course (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Credit INT
);
CREATE TABLE Student_Course (
	st_id int,
	course_id int,
	PRIMARY KEY(st_id,course_id),
	FOREIGN KEY(st_id) REFERENCES Student(id),
	FOREIGN KEY(course_id) REFERENCES Course(id)
);
CREATE TABLE Teacher_Course(
teacher_id int,
course_id int,
PRIMARY KEY(teacher_id,course_id),
FOREIGN KEY (teacher_id) REFERENCES Teacher(Id),
FOREIGN KEY(course_id) REFERENCES Course(Id)
);

CREATE TABLE Attendance (
	d Date,
    Student_Id INT,
    Status VARCHAR(10),
    Course_Id INT,
    PRIMARY KEY (Student_Id, Course_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Id),
    FOREIGN KEY (Course_Id) REFERENCES Course(Id)
);