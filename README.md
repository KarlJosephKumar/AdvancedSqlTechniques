# Advanced Sql Techniques for Data Engineering

Project for IBM Data Engineering Sertificate.

I was given 3 csv's for data which will be included in the files with all of the sql queries made.

The project is done on IBM DB2 on cloud.


<b> - Exercise 1 Joins</b>

Question 1:

Write and execute a SQL query to list the school names, community names and average attendance for communities
with a hardship index of 98.

![ex1q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/683a465e-0f43-40d3-a15d-df15ab10145a)

Question 2:

Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and
community name.

![ex1q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/0004a7f3-244e-46a4-9c4b-61bcd1dd1333)


<b> - Exercise 2 Views</b>

Question 1:

Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.

![EX2q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/ac34589a-120b-4b41-898f-b233516f5338)


<b> - Exercise 3 Stored Procedure</b>

Question 1:

Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes
a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer. Don’t forget to use the #SET
TERMINATOR statement to use the @ for the CREATE statement terminator.

![EX3Q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/844568bf-ed72-490e-bec0-32e719507e54)

Question 2:

Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the
CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID to the value in the
in_Leader_Score parameter.

![ex3q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/c0c2d0be-b2f2-4897-8d81-f356214293d1)

Question 3:

Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the
CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID using the following information.

![ex3q3](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/55cb3843-ff66-45bd-8b0f-6f19f61e4d71)

Question 4:

Run your code to create the stored procedure.

![ex3q4](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/d76b8290-398b-4b52-8db0-29f5cd6a7959)


<b> - Exercise 4 Transactions</b>

Question 1:
Update your stored procedure definition. Add a generic ELSE clause to the IF statement that rolls back the current
work if the score did not fit any of the preceding categories.

![EX4Q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/0374f4ad-ada0-4551-a269-0231585ee32e)


Question 2:
Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the
procedure.

![EX4Q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/2a8316fc-d057-4250-82d4-5fac83e90d61)
