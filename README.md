# Advanced Sql Techniques for Data Engineering

## Key learnings
- In-depth knowledge of SQL
- Relational Databases
- Cloud databases

## Techstack
- SQL
- IBM DB2

## Summary
Project for IBM Data Engineering Certificate.

I was given 3 csv's for data which will be included in the files with all of the sql queries made.

The project is done on IBM DB2 on cloud.


<b> - Exercise 1 Joins</b>

Question 1:

Write and execute a SQL query to list the school names, community names and average attendance for communities
with a hardship index of 98.

![ex1q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/fb3065e1-2223-4570-b92b-4b2a9f4bac0c)

Question 2:

Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and
community name.

![ex1q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/43f175e9-fff6-40cf-beb5-500a29b9197a)


<b> - Exercise 2 Views</b>

Question 1:

Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.

![EX2q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/0ad26d0b-0223-4f1a-b11a-222b939713bc)


<b> - Exercise 3 Stored Procedure</b>

Question 1:

Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes
a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer. Don’t forget to use the #SET
TERMINATOR statement to use the @ for the CREATE statement terminator.

![EX3Q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/cba1a9f1-6eef-44f1-97db-4109553db941)

Question 2:

Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the
CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID to the value in the
in_Leader_Score parameter.

![ex3q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/3be40681-3d64-4eb6-8a81-a9e2c86e02af)

Question 3:

Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the
CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID using the following information.

![ex3q3](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/fcaf6166-5bbe-422e-b438-557118bb406c)

Question 4:

Run your code to create the stored procedure.

![ex3q4](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/24f89ae1-05f5-4da5-8e3a-0f330a542deb)


<b> - Exercise 4 Transactions</b>

Question 1:
Update your stored procedure definition. Add a generic ELSE clause to the IF statement that rolls back the current
work if the score did not fit any of the preceding categories.

![EX4Q1](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/068bc4af-50fd-4196-a4d5-491997e94dd3)


Question 2:
Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the
procedure.

![EX4Q2](https://github.com/KarlJosephKumar/AdvancedSqlTechniques/assets/41339304/2779e60f-6bb0-4dad-971f-b3436445e363)
