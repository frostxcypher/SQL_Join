SELECT 
    b.Title, 
    p.Name AS Publisher
FROM Book b
INNER JOIN Publisher p ON b.PublisherID = p.PublisherID;

SELECT 
    b.Title, 
    m.Name AS Borrower, 
    bo.BorrowDate
FROM Book b
LEFT JOIN Borrow bo ON b.BookID = bo.BookID
LEFT JOIN Member m ON bo.MemberID = m.MemberID;

SELECT 
    m.Name AS Member, 
    b.Title AS BorrowedBook
FROM Book b
RIGHT JOIN Borrow bo ON b.BookID = bo.BookID
RIGHT JOIN Member m ON bo.MemberID = m.MemberID;

SELECT 
    b.Title, 
    m.Name AS Borrower
FROM Book b
LEFT JOIN Borrow bo ON b.BookID = bo.BookID
LEFT JOIN Member m ON bo.MemberID = m.MemberID

UNION

SELECT 
    b.Title, 
    m.Name AS Borrower
FROM Book b
RIGHT JOIN Borrow bo ON b.BookID = bo.BookID
RIGHT JOIN Member m ON bo.MemberID = m.MemberID;
