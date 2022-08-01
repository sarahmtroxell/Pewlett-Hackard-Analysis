# Pewlett-Hackard-Analysis

## Project Overview
I am a fictonal HR analyst for Pewlett-Hackard with an assignment to prepare the company for a large wave of employees retiring. My analysis will help the compnay understand how many employees will likely retire and identify remaining employees that could benefit from their mentorship. The three main tasks of the project were:

1. Retrieve the number of employees retiring by title
2. Retrieve the employees elgible for the mentorship program
3. Write a report on the employee database analysis

## Resources
- Software: pgAdmin 4
- Language: SQL
- Source Files: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Output Files: retirement_titles.csv, unique_titles.csv, retiring_titles.csv, mentorship_eligibilty.csv

## Results: bulleted list with four major points from the two analysis deliverables. (6 pt)
### Employees Retiring by Title
![Retiring Titles](../main/Resources/retiring_titles.png)
- Senior Engineers and Senior Staff had the highest number of projected retirees, with 25,916 and 24,296 respectivly. Pewlett-Hackard should not only target these roles for the mentorship program, but also partner with recruiting teams to ensure they have a healthy pipeline of employees to these roles.
- There are only 2 Managers that will retire in the given period, which means this position may not be a good fit for the mentiorship program since an overwhelming majority of current Managers will still be at the company. 

### Employees Elgible for Mentorship Program
I added
![Mentorship Elgibility](../main/Resources/mentorship_titles.png)
- There are

## Analysis: summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
### Questions

### Additional Insights
1. The mentorship_elgibility table identified the remaining employees that could participate in the mentorship program. I wrote an additonal query to count the elgible employees grouped by title, which would allow Pewlett-Hackard to ensure they had an adequete amount of elgible employees to pair up in a similar role.
2. I
