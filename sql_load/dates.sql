SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM 
    job_postings_fact
WHERE  
    job_title_short = 'Data Analyst'
GROUP BY month
ORDER BY job_posted_count DESC


SELECT 
    salary_year_avg,
    salary_hour_avg,
    job_posted_date,
    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM job_postings_fact
WHERE job_posted_date IN ('6', '7', '8', '9', '10', '11', '12')
LIMIT 50;

