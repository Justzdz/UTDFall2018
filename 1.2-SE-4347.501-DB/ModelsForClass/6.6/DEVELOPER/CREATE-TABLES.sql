--- these lines delete existing tables
DROP TABLE PUBLISHER; 
DROP TABLE BOOK; 
DROP TABLE BOOK_AUTHORS; 
DROP TABLE BOOK_COPIES; 
DROP TABLE BORROWER; 
DROP TABLE BOOK_LOANS; 
DROP TABLE LIBRARY_BRANCH; 

--- these lines clear data in tables
TRUNCATE TABLE PUBLISHER; 
TRUNCATE TABLE BOOK; 
TRUNCATE TABLE BOOK_AUTHORS; 
TRUNCATE TABLE BOOK_COPIES; 
TRUNCATE TABLE BORROWER; 
TRUNCATE TABLE BOOK_LOANS; 
TRUNCATE TABLE LIBRARY_BRANCH; 

CREATE TABLE PUBLISHER 
  (Name VARCHAR(20) NOT NULL,
   Address VARCHAR(40) NOT NULL,
   Phone CHAR(12),
   PRIMARY KEY (Name)
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   );

CREATE TABLE BOOK 
  (BookId CHAR(20) NOT NULL,
   Title VARCHAR(30) NOT NULL,
   PublisherName VARCHAR(20),
   PRIMARY KEY (BookId),
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   FOREIGN KEY (PublisherName) REFERENCES PUBLISHER (Name)
   ON DELETE CASCADE
   --ON UPDATE CASCADE 
   );

CREATE TABLE BOOK_AUTHORS 
  (BookId CHAR(20) NOT NULL,
   AuthorName VARCHAR(30) NOT NULL,
   PRIMARY KEY (BookId, AuthorName),
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   FOREIGN KEY (BookId) REFERENCES BOOK (BookId) 
   ON DELETE CASCADE 
   --ON UPDATE CASCADE 
);


CREATE TABLE BOOK_COPIES 
  (BookId CHAR(20) NOT NULL,
   BranchId INTEGER NOT NULL,
   No_Of_Copies INTEGER NOT NULL,
   PRIMARY KEY (BookId, BranchId),
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   FOREIGN KEY (BookId) REFERENCES BOOK (BookId), 
   FOREIGN KEY (BranchId) REFERENCES LIBRARY_BRANCH (BranchId)
   ON DELETE CASCADE 
   --ON UPDATE CASCADE 
    );

CREATE TABLE BORROWER 
  (CardNo INTEGER NOT NULL,
   Name VARCHAR(30) NOT NULL,
   Address VARCHAR(40) NOT NULL,
   Phone CHAR(12),
   PRIMARY KEY (CardNo)
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   );
   
CREATE TABLE BOOK_LOANS 
  (CardNo INTEGER NOT NULL,
   BookId CHAR(20) NOT NULL,
   BranchId INTEGER NOT NULL,
   DateOut DATE NOT NULL,
   DueDate DATE NOT NULL,
   PRIMARY KEY (CardNo, BookId, BranchId),
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   FOREIGN KEY (CardNo) REFERENCES BORROWER (CardNo),
   FOREIGN KEY (BranchId) REFERENCES LIBRARY_BRANCH (BranchId),
   FOREIGN KEY (BookId) REFERENCES BOOK (BookId) 
   ON DELETE CASCADE 
   );
   
CREATE TABLE LIBRARY_BRANCH 
  (BranchId INTEGER NOT NULL,
   BranchName VARCHAR(20) NOT NULL,
   Address VARCHAR(40) NOT NULL,
   PRIMARY KEY (BranchId)
   --ON DELETE CASCADE 
   --ON UPDATE CASCADE 
   );