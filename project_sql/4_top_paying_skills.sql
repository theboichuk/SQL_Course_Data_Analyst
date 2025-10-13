SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
GROUP BY 
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
A quick insight breakdown of the top 25 highest-paying skills for data analysts (based on average salary):

1. Big Data & Distributed Computing Skills Pay the Most
Top earners: PySpark ($208K), Databricks ($142K), Airflow ($126K), Scala ($125K).
These are all big data engineering tools, not traditional data analyst tools.
Trend: The higher the analyst’s ability to handle large-scale, production-grade data systems, the higher the salary.

2. Cloud & DevOps Knowledge is Highly Rewarded
Skills like Kubernetes, GCP, and Linux appear prominently.
Also, collaboration and deployment tools — GitLab, Bitbucket, Jenkins, Atlassian — all exceed $125K+.
Trend: Analysts who can operate in cloud and CI/CD environments command higher pay — closer to data engineering or ML Ops levels.

3. AI & Machine Learning Tools Boost Pay
DataRobot, Watson, scikit-learn, and Jupyter are among the top.
Trend: Analytical roles involving machine learning model development or automation pay substantially more than pure BI/reporting jobs.

4. Programming Skills Lead to Premium Salaries
Python libraries like Pandas ($151K) and NumPy ($143K) are strong earners.
Swift ($153K) and GoLang ($145K) indicate crossover demand for analysts who can build production-level applications or analytics APIs.

5. Traditional BI & SQL Tools Are Still Strong but Pay Less
While tools like PostgreSQL ($124K) and MicroStrategy ($121K) are well-paying, they lag behind engineering and ML-related tools.
Trend: “Classic” analyst tools are stable but cap salary potential — whereas engineering or ML hybrid skills open the $150K+ range.
*/