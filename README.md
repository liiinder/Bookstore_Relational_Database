# Relational Database for a Bookstore

## Background

This project is made as the *[first assignment](/ASSIGNMENT.md)* in the course "Utveckling mot databas och databasadministration" at *[.NET Utvecklare](https://www.iths.se/utbildningar/netutvecklare/)*, where we where assigned to setup a database for some fictional bookstores with books/authors an inventory and some extra fields where I choose to go the route with employees/customers/orders. This repository consists of my SQL-queries, an ER-diagram and also the backup file (.bak) to restore/rebuild the database.



## Extra proud of

The database contains books using their unique *[ISBN-13](https://isbn-information.com/the-13-digit-isbn.html)* as a primary key. It is validated by a check constraint that relies on a function to verify the ISBN's validity by checking the prefix, length, characters and the computed check digit.
When a new ISBN is inserted, a trigger is used to standardize the input. This trigger calls the validation function, which checks the constrains but also removes any hyphens and returns the 13 numeric digits. This approach prevents duplicate entries of the same book to be stored. Otherwise it would still be possible to add *[1470 copies](https://chatgpt.com/share/6746f868-c0e0-8013-b9be-2338e77763c1)* of the same book, just by changing where the hyphens are placed. For example the following eight examples would all be duplicates.

`9780747532743`, `978-0-7475-3274-3`, `978-0747532743`, `--9780747532743--`,
<br/>
`978----0747532743`, `978--0747532--743`, `-9780747532743`, `978074753274-3`



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

I like to keep it uniform, but I'm not fixed to any specific standards. So if someone gives me another naming convention that seems better and/or working in another project where other people are doing it differently there would be no problems for me to adapt and change how I write or approach how things "should" be done. Just wanted something to go after for this project and this is what I went with this time.


## Thoughts and future improvements
I'm proud of the solution and how it all came together, it's always hard to simulate/mock data for something that hasn't a real use without any GUI / APP / API interaction. But I bet we're going to use this database in future assignments where I can keep building/upgrading on it to make it even better and to make a bit more sense.

One thing that bothers me a bit is the DELETE's, I want to implement soft-deletes instead to make it more 'real'. And with that swap out/experiment more with the 'ON DELETE' options for the foreign keys. It's just a bit too 'weird' to experiment with how a real user would use it when you're on an admin account sending queries to a database. So maybe also test adding a user with less/restricted permissions and add views and other ways they can interact with the database to not wreck it.

---

### Thank you for reading!
Best regards, Kristoffer Linder