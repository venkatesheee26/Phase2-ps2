create database OurExercise
use OurExercise
CREATE TABLE Publisher (
    pid INT PRIMARY KEY,
    publisher VARCHAR(255)
);

CREATE TABLE Author (
    Aid INT PRIMARY KEY,
    AName VARCHAR(255)
);

CREATE TABLE Category (
    Cid INT PRIMARY KEY,
    category VARCHAR(255)
);

CREATE TABLE Book (
    Bid INT PRIMARY KEY,
    BName VARCHAR(255),
    Bprice DECIMAL(10, 2),
    pid INT,
    Aid INT,
    Cid INT,
    FOREIGN KEY (pid) REFERENCES Publisher(pid),
    FOREIGN KEY (Aid) REFERENCES Author(Aid),
    FOREIGN KEY (Cid) REFERENCES Category(Cid)
);

-- Insert records into the tables
INSERT INTO Publisher (pid, publisher) VALUES
    (1, 'Publisher A'),
    (2, 'Publisher B'),
    (3, 'Publisher C');

INSERT INTO Author (Aid, AName) VALUES
    (1, 'Author X'),
    (2, 'Author Y'),
    (3, 'Author Z');

INSERT INTO Category (Cid, category) VALUES
    (1, 'Fiction'),
    (2, 'Non-Fiction'),
    (3, 'Mystery');

INSERT INTO Book (Bid, BName, Bprice, pid, Aid, Cid) VALUES
    (1, 'Book 1', 19.99, 1, 1, 1),
    (2, 'Book 2', 12.99, 2, 2, 2),
    (3, 'Book 3', 24.99, 3, 3, 1);
select*from Book