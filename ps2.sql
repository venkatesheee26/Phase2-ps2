create database Assessment2
use Assessment2
CREATE TABLE Publisher (
    pid INT PRIMARY KEY,
    publisher VARCHAR(50)
)
INSERT INTO Publisher  VALUES
    (1, 'venkatesh'),
    (2, 'sai'),
    (3, 'teja')

CREATE TABLE Author (
    Aid INT PRIMARY KEY,
    AName VARCHAR(50)
)
INSERT INTO Author  VALUES
    (1, 'Naveen'),
    (2, 'Anudeep'),
    (3, 'yednesh')

CREATE TABLE Category (
    Cid INT PRIMARY KEY,
    category VARCHAR(50)
)
INSERT INTO Category  VALUES
    (1, 'Java'),
    (2, 'python'),
    (3, 'mathematics')

CREATE TABLE Book (
    Bid INT PRIMARY KEY,
    BName VARCHAR(255),
    Bprice float,
    pid INT,
    Aid INT,
    Cid INT,
    FOREIGN KEY (pid) REFERENCES Publisher(pid),
    FOREIGN KEY (Aid) REFERENCES Author(Aid),
    FOREIGN KEY (Cid) REFERENCES Category(Cid))

INSERT INTO BOOK VALUES
    (1, 'Advanve-Java', 19.99, 1, 1, 1),
    (2, 'Advance-python', 12.99, 2, 2, 2),
    (3, 'mathematics', 24.99, 3, 3, 3)
SELECT * FROM BOOK



						




