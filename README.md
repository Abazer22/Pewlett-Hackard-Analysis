# Pewlett-Hackard-Analysis
# Purpose of our project
Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

1. Deliverable 1: The Number of Retiring Employees by Title
2. Deliverable 2: The Employees Eligible for the Mentorship Program
3. Deliverable 3: A written report on the employee database analysis

# Deliverable 1: The Number of Retiring Employees by Title
 retirement_titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955
 
 ![retirement_titles_screenshot](https://user-images.githubusercontent.com/90945875/138952542-b56d21d4-6a2f-40bd-90e6-6398a7bcdca0.PNG)

Because some employees may have multiple titles in the database we need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee,
we named the table unique_titles:
![uniqu_titles](https://user-images.githubusercontent.com/90945875/138953713-c36dea28-1fc5-4c27-a26b-a40114b2acff.PNG)

also we need the number of employees by their most recent job title who are about to retire

![count_per_title](https://user-images.githubusercontent.com/90945875/138954409-4c94eef8-bbbc-491a-9c6f-4727543ad413.PNG)

## Deliverable 2: The Employees Eligible for the Mentorship Program
  create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.we named
  the table mentorship_eligibilty:
  
  ![mentorship_eligibilty](https://user-images.githubusercontent.com/90945875/138955263-e769742d-363d-4dcf-889c-967ea1d8b4cb.PNG)

# Summary
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
there are 90,398 roles are in urgent need to be filled out as soon as the workforce starts retiring at any given time.

![uniqu_titles_count](https://user-images.githubusercontent.com/90945875/138963228-d2337a23-dc30-40c7-970b-d8ac91c11a00.PNG)


2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
there are 1549 employees who are eligible to participate in a mentorship program;

![mentorship_count](https://user-images.githubusercontent.com/90945875/138962757-64fb6f19-cde6-435c-96ab-ccf6e2806446.PNG)

 
