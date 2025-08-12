# SQL_Join

### Step 1: Understand the Database Schema
- The database contains the following tables:

- Book: Stores information about books, including BookID, Title, and PublisherID.

- Publisher: Stores publisher details, including PublisherID and Name.

- Borrow: Tracks book borrowing activity, linking books and members, with BorrowDate and optional ReturnDate.

-Member: Stores library member information such as MemberID and Name.

###Step 2: Retrieve Books with Publishers (INNER JOIN)
-Wrote a query to join Book and Publisher using PublisherID.

-Used INNER JOIN to get only books that have a matching publisher.

-Displayed:

--Title of the book

--Publisher name

###Step 3: List All Books and Borrowers (LEFT JOIN)
-Wrote a query starting from the Book table.

-Used LEFT JOIN with Borrow and Member tables to:

-Show all books

-Include borrower name and borrow date if the book has been borrowed

-Ensured that books never borrowed still appear in the results with NULL values for borrower details.

###Step 4: Show All Members and the Books They Borrowed (RIGHT JOIN)
-Wrote a query starting from the Book table but used RIGHT JOIN:

-First with Borrow to ensure borrow records are preserved

-Then with Member to ensure all members appear

-Displayed:

--Member name

--Borrowed book title

This ensures that members who borrowed books are always listed, even if book details are missing.

###Step 5: Combine Results from LEFT and RIGHT JOIN (UNION)
-Wrote two queries:

-First using LEFT JOIN from Book to Borrow and Member

-Second using RIGHT JOIN from Book to Borrow and Member

-Combined both using UNION to:

-Simulate a FULL OUTER JOIN

-Ensure all book–member borrow relationships are included

-Removed duplicates automatically (due to UNION default behavior).

###Step 6: Verify Query Results
-Ran each query in the SQL editor and checked output.

-Verified:

--Correct relationships between books, publishers, borrowers, and members

--NULL values appear where no matching record exists

-No unintended data was omitted

###Outcome
-Practiced multiple SQL join types: INNER JOIN, LEFT JOIN, RIGHT JOIN, and UNION.

-Learned how different joins affect the inclusion of unmatched rows.

-Successfully combined results to emulate a FULL OUTER JOIN.

-Improved understanding of retrieving relational data across multiple tables.
