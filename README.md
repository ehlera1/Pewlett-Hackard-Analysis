# Pwelett Hackard “Silver Tsunami” Analysis
## Analysis Overview
For this analysis we partnered with Bobby, an HR Analyst at Pwelett Hackard. We have previously provided custom reporting to Bobby’s manager and we are now tasked with two more assignments. The reporting needs as communicated to us are to better help determine the number of retiring employees per title and identify employees that would be eligible to participate in a mentorship program.  
## Resources
-	Software: PostgreSQL/PGAdmin 

## Results
### Analysis of the number of retiring employees by title
The first step in our analysis was to distil that data using SQL query tools to find employees of retirement age by job title. To get a compressive list, our process was to create a query that would join all the relevant information needed for our analysis. For this report we needed the employee number, first and last name, title, to date and from dates of employment. We filtered the data using employee’s birth dates for those born between 1952 and 1955 and then ordered the data by employee number. 
Below is a sample of the retirement_titles table that we created: 
!Retirement Table Sample 
-	While reviewing the data in the Retirement Titles table we noticed that there are duplicate entries for some employees. As our initial query included all the employee and title related data there are duplicate entries for some employees. This is likely from employee’s changing roles over their career. Because there are duplicates, we further distilled the results to only show unique employees. 
The secondary report we created is titled as unique_titles and there is an example below: 
!Unique Titles Sample
The third report that we generated using SQL query tools was to show the count of our all employees retire based on job title. This table is a good and simple summary that you can quickly see the overall count by job title. 
Below shows the retiring_titles results: 
!Example of retiring titles 

### Analysis of employees eligible for the mentorship program
The final task we needed to preform was to create a report that showed employees that are eligible for the mentorship program. To accomplish this, we reviewed employees that are still with the company and were born in the year 1965. 

Below is an example of the mentorship_eligibility table that we created: 

### Review of the analysis
In reviewing the tables/reports that we created for this analysis there are key insights that we can gather from this data:
-	Based number of unique records returned there are approximately 90,398 employees that are retiring.
-	Of the more than 90K employees approximately 64% are of a Senior level (29,414 Senior Engineers, and 28,254 Senior Staff).
-	Of the 9 total departments, there are two managers that will be retiring soon. That equates to an approximately loss of 22% of managerial staff. 
-	When reviewing the employees that are eligible for the mentorship program there are only about 1,549 of the age to gain acceptance into the program. 
## Summary 
When taking the key insights into consideration, Pewlett Hackard needs to have a strong focus on recruiting new employees to fill the roughly 90,398 vacancies from retiring employees. Pewlett Hackard also may need to broaden the criteria to gain acceptance into the mentorship program as the 1,549 mentors available based on the current criteria will likely not be adequate to cover the large number incoming employees needed or to working with current lower-level employees to grow their skill set. 
We also created two additional queries to break down the “silver tsunami” by department to see what areas of the business would have the most retirees. The top three departments that will need the most backfill will be Development, Production and Sales. The break down by department is as follows: 
! Department Retiring Tables 

Overall the Pewlett Hackard needs to do some robust preparations for the upcoming silver tsunami and this analysis should help focus their efforts.  
