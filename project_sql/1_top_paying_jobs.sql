SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10

/*
Key Insights:
SQL is the most demanded skill (8 mentions),
Python (7 mentions) and R (4 mentions),
Tableau (6 mentions) and Power BI (2 mentions),
Tools like Excel, Pandas, and NumPy remain essential for quick analysis and manipulation.
*/