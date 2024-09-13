
SELECT 
  job_id,
  salary_year_avg,
  job_title_short,

    CASE
        WHEN salary_year_avg >= 40000 THEN 'STANDARD'
        WHEN salary_year_avg > 80000  THEN 'HIGH'
        ELSE 'LOW'
    END AS salary_range
FROM job_postings_fact
WHERE job_title_short LIKE '%Data Analyst%'
ORDER BY salary_year_avg DESC
