# Job Market Data Analysis using SQL & Tableau
![Dashboard Overview](images/Screenshot 2025-07-07 at 2.47.37 PM.png)
### Project Summary

This project explores real-world job market data for a fictional recruitment company called **DataSearch**, with the goal of uncovering key hiring trends in data roles. Using **SQL**, I performed data cleaning, transformation, and exploratory analysis to understand salary patterns, in-demand skills, job titles, and experience requirements across industries and regions. The insights were visualized using **Tableau** through interactive dashboards and dynamic charts.
_______________________________________________________________________________________

### Dataset Structure

The dataset contains **job postings** information with the following key fields:

* `job_posting_id`, `job_posting_date`, `job_title`, `job_position_level`, `years_of_experience`
* Salary data: `minimum_pay`, `maximum_pay`, `pay_rate`
* Company attributes: `company_name`, `company_industry`, `company_size`
* `job_location`, `job_skills`, `number_of_applicants`
_______________________________________________________________________________________

### SQL Analysis Highlights

* **Data Cleaning & Preprocessing**:

  * Checked for missing values and duplicates
  * Counted total rows and columns
    
* **Exploratory Queries**:

  * Top job titles by number of postings
  * Average salary per job title and experience level
  * Job postings per industry and total applicants
  * Average experience required per job level
  * Unique industries and skills
_______________________________________________________________________________________

### Tableau Visualizations

Using Tableau Public, I built interactive dashboards to answer questions like:

* What are the most in-demand job titles?
* Which industries are hiring the most applicants?
* How does salary vary by experience and role?
* What skills are commonly required in data roles?

Visualizations include:

* Packed bubbles for job title frequency
* Line chart for salary vs. experience
* Area chart for job postings over time
* box_and_whisker plot for avg years of experience per industry
* A filterable dashboard by role and level of experience
_______________________________________________________________________________________

### Tools Used

* **PostgreSQL** for querying and cleaning
* **Tableau Public** for visual storytelling
* **GitHub** for version control and portfolio sharing

_______________________________________________________________________________________

### Key Skills Demonstrated

* SQL joins, aggregations, window functions
* Handling nulls, data types, and exploratory logic
* Dashboard design and filters in Tableau
* Storytelling with data for business decision-making

_______________________________________________________________________________________

### Project Goal

To support DataSearch in optimizing their recruitment focus by revealing:

* Which job titles and industries are booming
* How experience and salary are connected
* Where to target efforts for hiring data professionals
