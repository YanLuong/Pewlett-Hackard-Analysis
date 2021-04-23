# Pewlett Hackard Analysis

### Background

Pewlett Hackard is a large company employing several thousands of people. The company has been around for a long time with a large number of its workforce facing retirement. Pewlett Hackard needs to plan ahead to minimize the impact of retiring staff and unfilled vacancies. 

---
### Purpose
The purpose of this analysis is to determine which positions will need to be filled as thousands of employees retire. Bobby who is a HR analyst, will need to answer the following questions: 1) How many employees will be retiring soon per title? and 2) Who will be eligible to participate in mentorship program?. Bobby's goal is to generate a list of upcoming employees who will be eligible for retirement package. The data is currently only stored in CSV formats as the company has been using mainly Excel and VBA to work with the data. Instead of using the current method, they have decided to upgrade to using SQL to handle the large volume of data. We will help Bobby build an employee SQL database which will allow us to use queries to pull out relevant data.

---
### Results

**Retiring Employees By Title Analysis:**

* In the table below, the largest title group facing retirement soon is 'Senior Engineer' totalling 29414, closely followed by 'Senior Staff' with 28254 retiring soon.
* The number of eligible employees facing retirement is extremely high. The table shows all the possible employees eligible for retirement, however it does not differentiate between current and employees that have already left.

![retiring_titles](https://github.com/YanLuong/Pewlett-Hackard-Analysis/blob/main/Analysis_Projects_Folder/Pewlett-Hackard-Analysis%20Folder/Screen%20Shot%20Retiring%20Titles.png)



**Mentorship Eligibility Analysis:**

* The screenshot below (left image), provides a list of the employees eligible for the mentorship program. After running a count function in the database, the number eligible is only 1549. 
* To get another perspective of the employees eligible for the mentorship program, the table below (right image) groups by title and the count for each title. We can see that the largest group eligible by title is 'Senior Staff' followed by 'Engineer'. The senior engineer position is currently filled with the largest group of employees retiring soon. However, in the mentorship eligibility results there are only 169 of them. Overall, when comparing the results from the earlier query (Retiring Employees By Title) to mentorship eligibility, there is a significant short fall.


Mentorship Eligibility list          |  Eligibility Per Title
:-------------------------:|:-------------------------:
![!mentorship eligibility](https://github.com/YanLuong/Pewlett-Hackard-Analysis/blob/main/Analysis_Projects_Folder/Pewlett-Hackard-Analysis%20Folder/Screen%20Shot%20Mentorship%20Eligibility.png)  |  ![mentor eligibility by title](https://github.com/YanLuong/Pewlett-Hackard-Analysis/blob/main/Analysis_Projects_Folder/Pewlett-Hackard-Analysis%20Folder/Mentor_eligibility_by_title%20screenshot.png)



----

### Summary:

* *How many roles will need to be filled as the "silver tsunami" begins to make an impact?*
  I believe that the results generated from the 'Retiring By Employees' analysis do not capture the correct amount. The queries pulled data from the 'employees' table includes employees that no longer work at the company. To capture a more accurate result, I would recommend using a filter to capture only present employees where 'to_date' = '9999-01-01'. Since there is an existing table consisting of employees retiring soon called 'retirement_info', I ran a query to filter out for only currently employed. The number generated is that 33,118 positions would need to be filled before the 'silver tsunami' begins.
  
* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?


Mentorship Eligibility list          |  Retiring Soon Per Title
:-------------------------:|:-------------------------:
![mentor eligibility by title](https://github.com/YanLuong/Pewlett-Hackard-Analysis/blob/main/Analysis_Projects_Folder/Pewlett-Hackard-Analysis%20Folder/Mentor_eligibility_by_title%20screenshot.png)  |  ![currently employed](https://github.com/YanLuong/Pewlett-Hackard-Analysis/blob/main/Analysis_Projects_Folder/Pewlett-Hackard-Analysis%20Folder/current_retiring_employees%20screenshot.png)



