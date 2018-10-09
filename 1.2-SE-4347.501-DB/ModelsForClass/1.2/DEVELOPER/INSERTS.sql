--INSERT data into tables
INSERT INTO STUDENT VALUES ('Smith', 17, 1, 'CS');
INSERT INTO STUDENT VALUES ('Brown', 8, 2, 'CS');

INSERT INTO COURSE VALUES ('Intro to Computer Science', 'CS1310', 4, 'CS');
INSERT INTO COURSE VALUES ('Data Structures', 'CS3320', 4, 'CS');
INSERT INTO COURSE VALUES ('Discrete Mathematics', 'MATH2410', 3, 'MATH');
INSERT INTO COURSE VALUES ('Database', 'CS3380', 3, 'CS');

INSERT INTO SECTION VALUES (85, 'MATH2410', 'Fall', 07, 'King');
INSERT INTO SECTION VALUES (92, 'CS1310', 'Fall', 07, 'Anderson');
INSERT INTO SECTION VALUES (102, 'CS3320', 'Spring', 08, 'Knuth');
INSERT INTO SECTION VALUES (112, 'MATH2410', 'Fall', 08, 'Chang');
INSERT INTO SECTION VALUES (119, 'CS1310', 'Fall', 08, 'Anderson');
INSERT INTO SECTION VALUES (135, 'CS3380', 'Fall', 08, 'Stone');

INSERT INTO GRADE_REPORT VALUES (17, 112, 'B');
INSERT INTO GRADE_REPORT VALUES (17, 119, 'C');
INSERT INTO GRADE_REPORT VALUES (8, 85, 'A');
INSERT INTO GRADE_REPORT VALUES (8, 92, 'A');
INSERT INTO GRADE_REPORT VALUES (8, 102, 'B');
INSERT INTO GRADE_REPORT VALUES (8, 135, 'A');

INSERT INTO PREREQUISITE VALUES ('CS3380', 'CS3320');
INSERT INTO PREREQUISITE VALUES ('CS3380', 'MATH2410');
INSERT INTO PREREQUISITE VALUES ('CS3320', 'CS1310');