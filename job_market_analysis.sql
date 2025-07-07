CREATE TABLE job_postings (
  job_posting_id            INTEGER PRIMARY KEY,
  job_posting_date          DATE,
  job_title                 TEXT,
  job_title_full            TEXT,
  job_title_additional_info TEXT,
  job_position_type         TEXT,
  job_position_level        TEXT,
  years_of_experience       INTEGER,
  job_skills                TEXT,
  job_location              TEXT,
  minimum_pay               NUMERIC,
  maximum_pay               NUMERIC,
  pay_rate                  TEXT,
  number_of_applicants      INTEGER,
  company_name              TEXT,
  company_industry          TEXT,
  company_size              TEXT
);
______________________________________________________________________

ALTER TABLE job_postings
ALTER COLUMN job_posting_id TYPE BIGINT,
ALTER COLUMN number_of_applicants TYPE BIGINT;

______________________________________________________________________
#calculate the number of columns 

SELECT COUNT(*) AS total_columns 
FROM information_schema.columns 
WHERE table_name = 'job_postings';
______________________________________________________________________
#calculate the number of rows 

SELECT COUNT(*) AS total_rows FROM job_postings;

______________________________________________________________________
#finding the number of null and filled values in each columns

SELECT 
  COUNT(*) AS total_rows,
  COUNT(job_posting_id) AS id_filled,
  COUNT(job_posting_date) AS date_filled,
  COUNT(job_title) AS title_filled,
  COUNT(job_title_additional_info) AS additional_info_filled,
  COUNT(job_position_type) AS position_filled,
  COUNT(job_position_level)AS position_level_filled,
  COUNT(years_of_experience) AS experience_filled,
  COUNT(job_skills) AS skills_filled,
  COUNT(job_location) AS location_filled,
  COUNT(minimum_pay) AS min_filled,
  COUNT(maximum_pay) AS max_filled,
  COUNT(pay_rate) AS rate_filled,
  COUNT(number_of_applicants) AS applicants_filled,
  COUNT(company_name) AS company_filled,
  COUNT(company_industry) AS industry_filled,
  COUNT(company_size) AS size_filled
FROM job_postings;
______________________________________________________________________
#finding duplicates

SELECT job_posting_id, COUNT(*) 
FROM job_postings
GROUP BY job_posting_id
HAVING COUNT(*) > 1;
______________________________________________________________________
#finding the number of unique values in each column

SELECT DISTINCT company_industry
FROM job_postings
ORDER BY company_industry;
______________________________________________________________________
#finding the number of applicants per industry

SELECT SUM(number_of_applicants) AS num_of_applicants,
company_industry
FROM job_postings
WHERE number_of_applicants IS NOT NULL
GROUP BY company_industry
ORDER BY SUM(number_of_applicants) DESC;
______________________________________________________________________
#finding the average salary per position level

SELECT 
  job_position_level,
  COUNT(*) AS total_jobs,
  AVG (years_of_experience) AS avg_years_experience
FROM job_postings
WHERE years_of_experience IS NOT NULL
GROUP BY job_position_level
ORDER BY avg_years_experience ASC;
______________________________________________________________________
#finding the number of job postings per job title

SELECT 
  job_title,
  COUNT(*) AS total_postings
FROM job_postings
GROUP BY job_title
ORDER BY total_postings DESC;
______________________________________________________________________
#finding the average salary per job title and years of experience

SELECT
job_title,

years_of_experience,

ROUND(AVG((minimum_pay + maximum_pay) / 2.0)) AS avg_salary

FROM job_postings

WHERE minimum_pay IS NOT NULL AND maximum_pay IS NOT NULL

GROUP BY job_title, years_of_experience

ORDER BY avg_salary DESC;