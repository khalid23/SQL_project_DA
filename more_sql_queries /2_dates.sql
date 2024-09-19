SELECT 
    EXTRACT(MONTH FROM (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York')) AS month,
    COUNT(*) AS num_postings
FROM 
    job_postings
WHERE 
    EXTRACT(YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') = 2023
GROUP BY 
    month
ORDER BY 
    month;




SELECT 
    company_id
FROM 
    job_postings_fact
WHERE 
    job_health_insurance = TRUE
    AND EXTRACT(QUARTER FROM job_posted_date) = 2
    AND EXTRACT(YEAR FROM job_posted_date) = 2023;