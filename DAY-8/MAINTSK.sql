create TABLE Student1 (
    StudentID int PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    EnrollmentYear int
);
CREATE TABLE CoursesProvided (
    CourseID int PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits int,
    Department VARCHAR(50)
);
create TABLE Instructors (
    InstructorID int PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50)
);
create TABLE CourseOffered (
    OfferingID int PRIMARY KEY,
    CourseID int,
    InstructorID int,
    Semester VARCHAR(10),
    Year int,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);
create TABLE Registrations (
    RegistrationID int PRIMARY KEY,
    StudentID int,
    OfferingID int,
    RegistrationDate DATE,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (OfferingID) REFERENCES CourseOfferings(OfferingID)
);
