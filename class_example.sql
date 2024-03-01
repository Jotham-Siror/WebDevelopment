CREATE TABLE
    Students (
        StudentId int NOT NULL,
        PRIMARY KEY (Student Id),
        StudentName varchar(255),
        Gender varchar(255),
        EmailAddress varchar(255),
        Course varchar(255),
        DateOfBirth date,
        AdmissionNumber int
    );

CREATE TABLE
    Classrooms (
        ClassroomId int NOT NULL,
        PRIMARY KEY (ClassroomId),
        ClassName varchar(100),
        building varchar(100),
        capacity varchar(5),
        facilities text,
        labTech varchar(255)
    );

CREATE TABLE
    Lecturers (
        LecturerId int NOT NULL,
        PRIMARY KEY (LecturerId),
        LecturerName varchar(255),
        Gender varchar(255),
        EmailAddress varchar(255),
        Course varchar(255),
        DateOfBirth date,
        AdmissionNumber int
    );

CREATE TABLE
    events (
        eventId int NOT NULL,
        PRIMARY KEY (eventId),
        eventName varchar(100),
        eventLocation varchar(100),
        eventDates date,
        eventTheme varchar(255)
    );

CREATE TABLE
    courses (
        courseId int NOT NULL,
        PRIMARY KEY (courseId),
        courseName varchar(255),
        courseDuration varchar(255),
        courseCost varchar(255),
        courseIntake date
    );

CREATE TABLE
    library (
        libraryId int NOT NULL,
        PRIMARY KEY (libraryId),
        bookName varchar(255),
        bookCost varchar(255),
        bookReferenceNumber varchar(255),
        bookReturnDate date
    );

ALTER TABLE students MODIFY StudentId int AUTO_INCREMENT;

ALTER TABLE lecturers MODIFY LecturerId int AUTO_INCREMENT;

ALTER TABLE library MODIFY libraryId int AUTO_INCREMENT;

ALTER TABLE events MODIFY eventId int AUTO_INCREMENT;

ALTER TABLE courses MODIFY courseId int AUTO_INCREMENT;

ALTER TABLE classrooms MODIFY ClassroomId int AUTO_INCREMENT;

-- Alter Table
ALTER TABLE students ADD phoneNumber int (13);

ALTER TABLE Lecturers ADD phoneNumber int (13);

-- Unique 
ALTER TABLE students MODIFY phoneNumber int (13) UNIQUE;

ALTER TABLE students MODIFY EmailAddress varchar(255) UNIQUE;

ALTER TABLE lecturers MODIFY EmailAddress varchar(255) UNIQUE;

ALTER TABLE lecturers MODIFY phoneNumber int (13) UNIQUE;

-- Changing table
ALTER TABLE students CHANGE Course courseId INT;

ALTER TABLE lecturers CHANGE Course courseId INT;

ALTER TABLE students ADD CONSTRAINT FK_StudentCourse FOREIGN KEY (courseId) REFERENCES courses (courseId);

ALTER TABLE lecturers ADD CONSTRAINT FK_lecturerCourse FOREIGN KEY (courseId) REFERENCES courses (courseId);

-- 
-- 
--
-- Inserting values into the table (Courses) 
INSERT INTO
    courses (
        courseName,
        courseIntake,
        courseDuration,
        courseCost
    )
VALUES
    ('Surgery', '2nd May', '36 months', 500000),
    (
        'Software Engineering',
        '8th July',
        '48 months',
        1000000
    ),
    (
        'Civil Engineering',
        '23rd September',
        '48 months',
        400000
    ),
    ('Robotics', '3rd May', '48 months', 500000),
    ('Forestry', '3rd August', '24 months', 50000),
    (
        'Electrical Engineering',
        '3rd September',
        '48 months',
        600000
    ),
    (
        'Drone Piloting',
        '3rd September',
        '6 weeks',
        150000
    ),
    (
        'Mechatronics Engineering',
        '3rd September',
        '48 months',
        500000
    ),
    ('Piloting', '3rd June', '9 months', 2000000),
    (
        'Chemical Engineering',
        '3rd September',
        '36 months',
        450000
    );

INSERT INTO
    courses (
        courseName,
        courseIntake,
        courseDuration,
        courseCost
    )
VALUES
    ('Pharmacy', '2nd May', '36 months', 500000),
    (
        'Aeronautical Engineering',
        '8th July',
        '48 months',
        1000000
    ),
    (
        'Aerospace Engineering',
        '23rd September',
        '48 months',
        400000
    ),
    ('Surveying', '3rd May', '48 months', 500000),
    ('Dentistry', '3rd August', '24 months', 50000),
    (
        'Automotive Engineering',
        '3rd September',
        '48 months',
        600000
    ),
    (
        'Cyber Security',
        '3rd September',
        '6 weeks',
        150000
    ),
    (
        'Medical Engineering',
        '3rd September',
        '48 months',
        500000
    ),
    ('Hygiene', '3rd June', '9 months', 2000000),
    (
        'Vegetable farming',
        '3rd September',
        '36 months',
        450000
    );

-- 
-- 
-- 
-- Events
INSERT INTO
    events (eventName, eventDates, eventLocation, eventTheme)
VALUES
    (
        'Year of the Dragon Festival',
        '2nd May',
        'Nyayo Stadium',
        'Fire!!!!!!'
    ),
    (
        'Homecoming',
        '8th July',
        'Ampitheatre',
        'Moonlight'
    ),
    (
        'Robotics Day',
        '23rd September',
        'Strathmore ilab',
        'The Future'
    ),
    (
        'Aviation Day',
        '3rd May',
        'Students Centre',
        'The Dawn of Drones'
    ),
    (
        'Strathmore Opens',
        '3rd August',
        'Student Centre',
        'Importance of Info'
    ),
    (
        'Diplomacy Day',
        '3rd June',
        'The Dome',
        'Go Abroad!!'
    ),
    (
        'Culinary Day',
        '3rd October',
        'Cafeteria',
        'All you can Eat!!'
    ),
    (
        'Engineering day',
        '10th September',
        'Workshop',
        'Engines!!!!'
    ),
    (
        'Gaming Day',
        '3rd May',
        'Gaming Hub',
        'Come with your skills!!'
    ),
    (
        'Hackathon',
        '3rd September',
        'Strathmore ilab',
        'Can you hack?'
    );

-- 
-- 
-- 
INSERT INTO
    classrooms (
        ClassName,
        building,
        capacity,
        facilities,
        labTech
    )
VALUES
    (
        'MedClass',
        'Manga Building',
        100,
        '1 tv screen, 50 desks, 100 computers, 100 chairs',
        'David'
    ),
    (
        'ICT',
        'Druid Building',
        120,
        '2 tv screen, 60 desks, 120 computers, 120 chairs',
        'Mathew'
    ),
    (
        'Ethical Hacking',
        'Saint Charlse Building',
        80,
        '1 tv screen, 40 desks, 80 computers, 80 chairs',
        'Collins'
    ),
    (
        'software',
        'Tech Building',
        90,
        '1 tv screen, 45 desks, 90 computers, 90 chairs',
        'Martha'
    ),
    (
        'Data science',
        'Uhuru Building',
        150,
        '3 tv screen, 75 desks, 150 computers, 150 chairs',
        'Doreen'
    ),
    (
        'CPA',
        'Madaraka Building',
        200,
        '4 tv screen, 100 desks, 200 computers, 200 chairs',
        'Jules'
    ),
    (
        'Api',
        'Uhuru Building',
        20,
        '1 tv screen, 10 desks, 20 computers, 20 chairs',
        'Alex'
    ),
    (
        'psycology',
        'Manga Building',
        180,
        '4 tv screen, 90 desks, 180 computers, 180 chairs',
        'Mark'
    ),
    (
        'Commerce',
        'Druid Building',
        50,
        '1 tv screen, 25 desks, 50 computers, 50 chairs',
        'Jane'
    ),
    (
        'ericsson',
        'Saint Charlse Building',
        100,
        '1 tv screen, 50 desks, 100 computers, 100 chairs',
        'Mary'
    );

-- 
-- 
-- 
-- Updating dates in Courses
UPDATE `courses`
SET
    `courseIntake` = '2024-05-11'
WHERE
    `courses`.`courseId` = 8;

UPDATE `courses`
SET
    `courseIntake` = '2024-06-10'
WHERE
    `courses`.`courseId` = 9;

UPDATE `courses`
SET
    `courseIntake` = '2024-06-20'
WHERE
    `courses`.`courseId` = 10;

UPDATE `courses`
SET
    `courseIntake` = '2024-06-27'
WHERE
    `courses`.`courseId` = 11;

UPDATE `courses`
SET
    `courseIntake` = '2024-05-15'
WHERE
    `courses`.`courseId` = 12;

UPDATE `courses`
SET
    `courseIntake` = '2024-10-10'
WHERE
    `courses`.`courseId` = 13;

UPDATE `courses`
SET
    `courseIntake` = '2025-11-10'
WHERE
    `courses`.`courseId` = 14;

UPDATE `courses`
SET
    `courseIntake` = '2024-11-10'
WHERE
    `courses`.`courseId` = 15;

UPDATE `courses`
SET
    `courseIntake` = '2024-02-17'
WHERE
    `courses`.`courseId` = 16;

UPDATE `courses`
SET
    `courseIntake` = '2024-12-10'
WHERE
    `courses`.`courseId` = 17;

UPDATE `courses`
SET
    `courseIntake` = '2024-09-11'
WHERE
    `courses`.`courseId` = 18;

UPDATE `courses`
SET
    `courseIntake` = '2024-09-11'
WHERE
    `courses`.`courseId` '[...]'
UPDATE `events`
SET
    `eventDates` = '2024-02-15'
WHERE
    `events`.`eventId` = 10;

-- 
-- 
-- 
-- Updating Lecturer ID
UPDATE `lecturers`
SET
    `LecturerId` = '0'
WHERE
    `lecturers`.`LecturerId` = 1;

UPDATE `lecturers`
SET
    `LecturerId` = '1'
WHERE
    `lecturers`.`LecturerId` = 2;

UPDATE `lecturers`
SET
    `LecturerId` = '2'
WHERE
    `lecturers`.`LecturerId` = 3;

UPDATE `lecturers`
SET
    `LecturerId` = '3'
WHERE
    `lecturers`.`LecturerId` = 4;

UPDATE `lecturers`
SET
    `LecturerId` = '4'
WHERE
    `lecturers`.`LecturerId` = 5;

UPDATE `lecturers`
SET
    `LecturerId` = '5'
WHERE
    `lecturers`.`LecturerId` = 6;

UPDATE `lecturers`
SET
    `LecturerId` = '6'
WHERE
    `lecturers`.`LecturerId` = 7;

UPDATE `lecturers`
SET
    `LecturerId` = '7'
WHERE
    `lecturers`.`LecturerId` = 8;

UPDATE `lecturers`
SET
    `LecturerId` = '8'
WHERE
    `lecturers`.`LecturerId` = 9;

UPDATE `lecturers`
SET
    `LecturerId` = '9'
WHERE
    `lecturers`.`LecturerId` = 10;

UPDATE `lecturers`
SET
    `LecturerId` = '10'
WHERE
    `lecturers`.`LecturerId` = 11;

UPDATE `lecturers`
SET
    `LecturerId` = '11'
WHERE
    `lecturers`.`LecturerId` = 12;

UPDATE `lecturers`
SET
    `LecturerId` = '12'
WHERE
    `lecturers`.`LecturerId` = 13;

UPDATE `lecturers`
SET
    `LecturerId` = '13'
WHERE
    `lecturers`.`LecturerId` = 14;

UPDATE `lecturers`
SET
    `LecturerId` = '14'
WHERE
    `lecturers`.`LecturerId` = 15;

INSERT INTO
    Students (
        StudentName,
        Gender,
        EmailAddress,
        courseID,
        DateOfBirth,
        AdmissionNumber,
        PhoneNumber
    )
VALUES
    (
        'Mwai Kibaki',
        'Male',
        'mwai@gmail.com',
        3,
        '1970-03-23',
        8945,
        0720956987
    ),
    (
        'Daniel Moi',
        'Male',
        'moi@gmail.com',
        3,
        '1992-08-23',
        2345,
        072576987
    ),
    (
        'Margaret Kenyata',
        'Female',
        'margaret@gmail.com',
        1,
        '2001-07-13',
        2745,
        07456456987
    );

INSERT INTO
    students (
        StudentName,
        Gender,
        EmailAddress,
        courseID,
        DateOfBirth,
        AdmissionNumber,
        phoneNumber
    )
VALUES
    (
        'Nelson Mandela',
        'Male',
        'mandela@gmail.com',
        5,
        '1970-03-01',
        1234,
        0700000001
    ),
    (
        'Omari Otutu',
        'Male',
        'omari@gmail.com',
        6,
        '1970-03-02',
        1234,
        0700000002
    ),
    (
        'Nyangweso Ochari',
        'Male',
        'ochari@gmail.com',
        4,
        '1970-03-03',
        1235,
        0700000893
    );

INSERT INTO
    students (
        StudentName,
        Gender,
        EmailAddress,
        courseID,
        DateOfBirth,
        AdmissionNumber,
        phoneNumber
    )
VALUES
    (
        'Richard Sarah',
        'Male',
        'richard@gmail.com',
        5,
        '2005-03-01',
        1234,
        0700000253
    ),
    (
        'Robert Otutu',
        'Male',
        'robert@gmail.com',
        6,
        '2002-03-02',
        1234,
        0703654002
    ),
    (
        'Steven Jennifer',
        'Male',
        'steven@gmail.com',
        4,
        '2001-03-03',
        1235,
        0700025464
    ),
    (
        'Elizabeth Mandela',
        'Male',
        'elizabeth@gmail.com',
        5,
        '2003-03-01',
        1234,
        0700035601
    ),
    (
        'Emily Otutu',
        'Male',
        'emily@gmail.com',
        6,
        '2012-03-02',
        1234,
        0706234002
    ),
    (
        'Karen Ochari',
        'Male',
        'karen@gmail.com',
        4,
        '202-03-03',
        1235,
        072340893
    ),
    (
        'Donald Mandela',
        'Male',
        'donald@gmail.com',
        5,
        '1996-03-01',
        1234,
        0706740001
    ),
    (
        'Joseph Betty',
        'Male',
        'joseph@gmail.com',
        6,
        '1984-03-02',
        1234,
        0700364502
    ),
    (
        'Jessica Barbara',
        'Male',
        'jessica@gmail.com',
        4,
        '2006-03-03',
        1235,
        0776330893
    );

INSERT INTO
    lecturers (
        LecturerName,
        Gender,
        EmailAddress,
        CourseID,
        DateOfBirth,
        AdmissionNumber,
        phoneNumber
    )
VALUES
    (
        'John Smith',
        'Male',
        'john.smith@example.com',
        11,
        '1980-05-15',
        'LS1001',
        '+1234567890'
    ),
    (
        'Jane Doe',
        'Female',
        'jane.doe@example.com',
        2,
        '1975-08-20',
        'LS1002',
        '+1987654321'
    ),
    (
        'Michael Johnson',
        'Male',
        'michael.johnson@example.com',
        3,
        '1982-12-10',
        'LS1003',
        '+1567890234'
    ),
    (
        'Emily Williams',
        'Female',
        'emily.williams@example.com',
        14,
        '1988-03-25',
        'LS1004',
        '+1654327890'
    ),
    (
        'David Brown',
        'Male',
        'david.brown@example.com',
        15,
        '1973-06-30',
        'LS1005',
        '+1345678901'
    ),
    (
        'Jessica Taylor',
        'Female',
        'jessica.taylor@example.com',
        6,
        '1985-09-05',
        'LS1006',
        '+1456789023'
    ),
    (
        'Christopher Martinez',
        'Male',
        'christopher.martinez@example.com',
        7,
        '1979-11-12',
        'LS1007',
        '+1789023456'
    ),
    (
        'Amanda Anderson',
        'Female',
        'amanda.anderson@example.com',
        18,
        '1984-02-18',
        'LS1008',
        '+1890234567'
    ),
    (
        'Daniel Garcia',
        'Male',
        'daniel.garcia@example.com',
        10,
        '1987-07-22',
        'LS1009',
        '+1902345678'
    ),
    (
        'Sarah Jackson',
        'Female',
        'sarah.jackson@example.com',
        11,
        '1976-10-28',
        'LS1010',
        '+1098765432'
    ),
    (
        'Robert Rodriguez',
        'Male',
        'robert.rodriguez@example.com',
        1,
        '1981-04-14',
        'LS1011',
        '+1209876543'
    ),
    (
        'Melissa Hernandez',
        'Female',
        'melissa.hernandez@example.com',
        12,
        '1983-01-08',
        'LS1012',
        '+1309876542'
    ),
    (
        'William Lee',
        'Male',
        'william.lee@example.com',
        7,
        '1974-08-03',
        'LS1013',
        '+1409876532'
    ),
    (
        'Laura Gonzalez',
        'Female',
        'laura.gonzalez@example.com',
        4,
        '1986-05-20',
        'LS1014',
        '+1509876432'
    ),
    (
        'Matthew Perez',
        'Male',
        'matthew.perez@example.com',
        5,
        '1989-09-30',
        'LS1015',
        '+1609875432'
    );

SELECT
    *
FROM
    `students`
WHERE
    Gender = 'Male'
    AND courseId = 5;

UPDATE `students`
SET
    `StudentId` = '1'
WHERE
    `students`.`StudentId` = 10;

UPDATE `students`
SET
    `StudentId` = '2'
WHERE
    `students`.`StudentId` = 11;

UPDATE `students`
SET
    `StudentId` = '3'
WHERE
    `students`.`StudentId` = 12;

UPDATE `students`
SET
    `StudentId` = '4'
WHERE
    `students`.`StudentId` = 13;

UPDATE `students`
SET
    `StudentId` = '5'
WHERE
    `students`.`StudentId` = 14;

UPDATE `students`
SET
    `StudentId` = '6'
WHERE
    `students`.`StudentId` = 15;

UPDATE `students`
SET
    `StudentId` = '7'
WHERE
    `students`.`StudentId` = 16;

UPDATE `students`
SET
    `StudentId` = '8'
WHERE
    `students`.`StudentId` = 17;

UPDATE `students`
SET
    `StudentId` = '9'
WHERE
    `students`.`StudentId` = 18;

UPDATE `students`
SET
    `StudentId` = '10'
WHERE
    `students`.`StudentId` = 19;

UPDATE `students`
SET
    `StudentId` = '11'
WHERE
    `students`.`StudentId` = 20;

UPDATE `students`
SET
    `StudentId` = '12'
WHERE
    `students`.`StudentId` = 21;

UPDATE `students`
SET
    `StudentId` = '13'
WHERE
    `students`.`StudentId` = 22;

UPDATE `students`
SET
    `StudentId` = '14'
WHERE
    `students`.`StudentId` = 23;

UPDATE `students`
SET
    `StudentId` = '15',
    `AdmissionNumber` = ''
WHERE
    `students`.`StudentId` = 24;