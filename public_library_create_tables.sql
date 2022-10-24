CREATE DATABASE public_library ; 
; 

USE public_library; 
CREATE TABLE AUTHOR 
(AuthorID INT NOT NULL AUTO_Increment, 
AuthorFirstName VARCHAR (255), 
AuthorLastName VARCHAR (255), 
AuthorNationality VARCHAR (255), 
PRIMARY KEY (AuthorId) 
); 

USE public_library; 
CREATE TABLE BOOK
(BookID INT NOT NULL AUTO_INCREMENT, 
BookTitle VARCHAR (255), 
BookAuthor INT, 
Genere VARCHAR (255), 
PRIMARY KEY (BookId) 
); 

ALTER TABLE BOOK 
RENAME COLUMN Genere TO Genre 
; 

CREATE TABLE Client 
(ClientID INT NOT NULL AUTO_INCREMENT, 
ClientFirstName VARCHAR (255), 
ClientLastName VARCHAR (255), 
ClientDoB TINYINT (4), 
Occupation VARCHAR (255), 
PRIMARY KEY (ClientID) 
); 

CREATE TABLE Borrower
(BorrowID INT NOT NULL AUTO_INCREMENT, 
ClientID INT NOT NULL, 
BOOKID INT, 
BorrowDate DATE, 
PRIMARY KEY (BorrowID) ); 

ALTER TABLE Borrower 
RENAME Column BOOKID TO BookID; 


