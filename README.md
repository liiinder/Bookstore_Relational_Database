# Relational Database for a Bookstore

## Background

This project is made as the *[first assignment](/ASSIGNMENT.md)* in the course "Utveckling mot databas och databasadministration" at *[.NET Utvecklare](https://www.iths.se/utbildningar/netutvecklare/)*, where we where assigned to setup a database for some fictional bookstores with books/authors an inventory and some extra fields where I choose to go the route with employees/customers/orders. This repository consists of my SQL-queries, an ER-diagram and also the backup file (.bak) to restore/rebuild the database.



## Extra proud of

The database contains books that is stored by their unique *[ISBN 13](https://isbn-information.com/the-13-digit-isbn.html)* number. Which is verified by checking it's prefix, length, faulty letters and calculating the check digit. Then on INSERTs a trigger is used to force the format to only use the 13 digits with no hyphens. This is to make it impossible to add the same book with different formating. Otherwise it would still be possible to add *[1470 copies](https://chatgpt.com/share/6746f868-c0e0-8013-b9be-2338e77763c1)* of the same book like this example.

| isbn13     | title |
| ----------- | ----------- |
| '9780747532743' | Harry Potter and the Philosopher's Stone |
| '978-0-7475-3274-3' | Harry Potter and the Philosopher's Stone |
| '9780-7475-3274-3' | Harry Potter and the Philosopher's Stone |
| '978-07475-3274-3' | Harry Potter and the Philosopher's Stone |

Instead now all are being formated to the first entry and the duplicates won't be allowed to be added.



## Views

There are two views in this database, 'titles_by_author' which is for Godkänt (Pass) and 'sales_by_employee' for VG (Pass with distinction). I choose to make the later so the stores could see which employees that have made the most sales as an interesting fact and I see that it could be useful for the stores to know if they want to implement a bonus/reward system for their employees. Below is an example with the 'TOP 3' from each view.

| Namn | Ålder | Titlar | Lagervärde |
| -----| -----: | :------: | ----------: |
| J.K. Rowling | 59 år | 7 | 162058,00 |
| George Martin | 76 år | 6 | 134064,00 |
| Patrick Rothfuss | 51 år | 2 | 36994,00 |



| Butiksnummer | Anställningsnummer | Anställd | Total säljsumma | Unika säljtillfällen | Antal sålda böcker |
| :---: | :---: | :------ | ---: | :---: | :---: |
| 1 | 1 | Konny Krutsson | 5792,10 | 10 | 21 |
| 1 | 2 | Clara Bengtsson | 7187,30 | 9 | 23 |
| 1 | 3 | Alice Andersson | 3588,00 | 6 | 12 |



## Naming convention
Most of the project has been using the naming convention from this *[sqlshack post](https://www.sqlshack.com/learn-sql-naming-conventions/)*, except
the table "orders" as that is named in plural to not clash with the SQL keyword ORDER and no prefixes on the views and functions after another post/page didn't recommend those. In short it's Snake case with lower case letters separated by underscores and uppercase for all the SQL keywords.


## Thoughts and future improvements
I'm proud of the solution and how it all came together, it's always hard to simulate/mock data for something that hasn't a real use without any GUI / APP / API interaction. But I bet we're going to use this database in future assignments where I can keep building/upgrading on it to make it even better and to make a bit more sense.

One thing that bothers me a bit is the DELETE's, I want to implement soft-deletes instead to make it more 'real'. And with that swap out/experiment more with the 'ON DELETE' options for the foreign keys. It's just a bit too 'weird' to experiment with how a real user would use it when you're on an admin account sending queries to a database. So maybe also test adding a user with less/restricted permissions and add views and other ways they can interact with the database to not wreck it.