-- --1.	How many rows are in the data_analyst_jobs table?
-- SELECT COUNT(*)
-- FROM data_analyst_jobs;
-- --Answer: 1793

-- --2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
-- SELECT *
-- FROM data_analyst_jobs
-- LIMIT 10;
-- --Answer: ExxonMobil

-- --3a.	How many postings are in Tennessee?
-- SELECT COUNT(*)
-- FROM data_analyst_jobs
-- WHERE location = 'TN';
-- --Answer: 21

-- --3b. How many are there in either Tennessee or Kentucky?
-- SELECT COUNT(location)
-- FROM data_analyst_jobs
-- WHERE location in ('TN','KY');
-- --Answer: 27

-- --4.	How many postings in Tennessee have a star rating above 4?
-- SELECT COUNT(star_rating)
-- FROM data_analyst_jobs
-- WHERE star_rating > 4.0
-- --Answer: 416

-- --5.	How many postings in the dataset have a review count between 500 and 1000?
-- SELECT COUNT(review_count)
-- FROM data_analyst_jobs
-- WHERE review_count BETWEEN 500 AND 1000;
-- --Answer: 151

-- --6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
-- SELECT location AS state, AVG(star_rating) AS avg_rating
-- FROM data_analyst_jobs
-- GROUP BY location
-- ORDER BY avg_rating DESC;
-- --Answer: NE has the highest rating

-- --7.	Select unique job titles from the data_analyst_jobs table. How many are there?
-- SELECT COUNT(DISTINCT title)
-- FROM data_analyst_jobs;
-- --Answer: 881

-- --8.	How many unique job titles are there for California companies?
-- SELECT COUNT(DISTINCT title)
-- FROM data_analyst_jobs
-- WHERE location = 'CA'
-- --Answer: 230

--9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
SELECT company, SUM(review_count), AVG(star_rating)
FROM data_analyst_jobs
GROUP BY company;






