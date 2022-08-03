# Pewlett-Hackard-Analysis

## Project Overview
I am a fictonal HR analyst for Pewlett-Hackard with an assignment to prepare the company for a large wave of employees retiring known as the "silver tsunami". My analysis will help the compnay understand how many employees will likely retire and identify remaining employees that could benefit from their mentorship. The three main tasks of the project were:

1. Retrieve the number of employees retiring by title
2. Retrieve the employees elgible for the mentorship program
3. Write a report on the employee database analysis

## Resources
- Software: pgAdmin 4
- Language: SQL
- Source Files: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Output Files: retirement_titles.csv, unique_titles.csv, retiring_titles.csv, mentorship_eligibilty.csv

## Results:
### Employees Retiring by Title
![Retiring Titles](../main/Resources/retiring_titles.png)
- Senior Engineers and Senior Staff had the highest number of projected retirees, with 25,916 and 24,296 respectivly. Pewlett-Hackard should not only target these roles for the mentorship program, but also partner with recruiting teams to ensure they have a healthy pipeline of employees to these roles.
- There are only 2 Managers that will retire in the given period, which means this position may not be a good fit for the mentiorship program since an overwhelming majority of current Managers will still be at the company. This also signifies to HR that Managers are not a high risk position to be impacted by the "silver tsunami".

### Employees Elgible for Mentorship Program
![Mentorship Elgibility](../main/Resources/mentorship_elgibility.png)
- There are 1,549 current employees who are elgible to participate in the proposed mentorship program. 
- There are more employees retiring than there are employees elgible for the mentorship program. This is significantly smaller than the amount of employees set to retire, so there should not be an issue with finding mentors for any interested employees.

## Analysis:

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact? The retiring_titles table I created displays the number of unique employees set to retire by title. I modified this query to sum all of employees set to retire as a total instead of by title by removing title from the SQL select statement and deleting the group by and order by lines. The query result is shown below, which states 72,458 roles will need to be filled as a result of the "silver tsunami" retirees.
  ```
    --Total Number of Employees Set to Retire
    SELECT COUNT(emp_no)
    FROM unique_titles;
  ```
![Retirement Total](../main/Resources/retirement_total.png)

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
To determine if there are enough qualified retirement-ready employees in each department to mentor current employees, I created an additonal query. 

  ```
    --Number of Reamaining Employees by Job Title Elgible for Mentorship Program
    SELECT COUNT(emp_no), title
    FROM mentorship_elgibility
    GROUP BY title
    ORDER BY COUNT(emp_no);
  ```
![Mentorship Titles](../main/Resources/mentorship_titles.png)

The mentorship_elgibility table identified the remaining employees that could participate in the mentorship program. I wrote an additonal query to count the elgible employees grouped by title, which would allow Pewlett-Hackard to ensure they had an adequete amount of elgible employees to pair up in a similar role.
