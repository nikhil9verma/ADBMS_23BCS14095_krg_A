CREATE TABLE TBL_AUTHORS (
  AUTH_ID int primary key,
  AUTH_NAME varchar(20)
);
CREATE TABLE TBL_BOOKS (
  BOOK_ID INT primary key,
  BOOK_NAME varchar(20),
  AUTH_ID int,
  foreign key (AUTH_ID) references TBL_AUTHORS(AUTH_ID)
)
-- insert
INSERT INTO TBL_AUTHORS VALUES (1, 'Fyodor Dostoevsky');
INSERT INTO TBL_AUTHORS VALUES (2, 'Franz Kafka');
INSERT INTO TBL_AUTHORS VALUES (3, 'J.K. Rowling');

INSERT INTO TBL_BOOKS VALUES (1, 'Metamorphosis',2);
INSERT INTO TBL_BOOKS VALUES (2, 'Harry Potter',3);
INSERT INTO TBL_BOOKS VALUES (3, 'Crime and Punishment',1);

