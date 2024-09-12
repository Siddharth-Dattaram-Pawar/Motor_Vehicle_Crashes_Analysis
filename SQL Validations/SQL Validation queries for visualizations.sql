select count (distinct(crash_id)) from dbo.fct_accident -- 4221126
select count(*) from dbo.fct_contribution --10140583

select * from  dbo.fct_accident
select * from dbo.dim_location

/* 1. Accidents occured in NYC,Austin, Chicago*/

select l.city as city,count(distinct fa.crash_id) as cnt_acc
from dbo.dim_location l 
left join dbo.fct_accident fa
on l.Location_ID = fa.Location_ID
group by city
order by cnt_acc desc

/* 2. Areas in the 3 cities had the greatest number of accident */
WITH ranked_areas AS (
  SELECT 
    l.city AS city, 
    l.street_name AS street_name,
    COUNT(distinct fa.crash_id) AS cnt_acc,
    DENSE_RANK() OVER (PARTITION BY l.city ORDER BY COUNT(distinct fa.crash_id) DESC) AS rank
  FROM 
    dim_location l
  LEFT JOIN 
    fct_accident fa ON l.Location_ID = fa.Location_ID
  GROUP BY 
    l.city, l.street_name
)
SELECT 
  city,
  street_name,
  cnt_acc
FROM 
  ranked_areas
WHERE 
  rank <= 3 and street_name != 'NA'
order by city,cnt_acc desc


/*3. Accidents resulted in just injuries */
--Overall
select count(distinct crash_id) as total_accidents
from fct_accident
where tot_injury_count > 0 AND tot_death_count = 0

--by city 
select count(distinct fa.crash_id) as total_accidents,dl.city as city
from fct_accident fa 
join dim_location dl
on fa.Location_ID = dl.Location_ID
where fa.tot_injury_count > 0 AND fa.tot_death_count = 0
group by city


/* 4. Pedestrians involved in accident */

--overall 
select count(distinct crash_id) from fct_accident where pedestrian_fl = 'Y' 

--city
select l.city as city, count(distinct crash_id) as pedestrian_involved
from fct_accident fa
join dim_location l 
on fa.Location_ID = l.Location_ID
where pedestrian_fl = 'Y'
group by city


/* 5. Accidents - Seasonality report */
SELECT 
    CASE 
        WHEN d.month IN (11, 0, 1) THEN 'WINTER'
        WHEN d.month IN (3, 4, 2) THEN 'SPRING'
        WHEN d.month IN (6, 7, 5) THEN 'SUMMER'
        WHEN d.month IN (9, 10, 8) THEN 'FALL'
    END AS Season,
    COUNT(distinct fa.crash_id) AS Accident_Count
FROM 
    dim_date d
JOIN 
    fct_accident fa
ON 
    d.date_sk = fa.date_sk
GROUP BY 
    CASE 
        WHEN d.month IN (11, 0, 1) THEN 'WINTER'
        WHEN d.month IN (3, 4, 2) THEN 'SPRING'
        WHEN d.month IN (6, 7, 5) THEN 'SUMMER'
        WHEN d.month IN (9, 10, 8) THEN 'FALL'
    END
ORDER BY 
    Accident_Count DESC;


/* 6. How many motorists are injured or killed in accidents */

--Overall
select sum(motorist_injured) as motorist_injured, sum(motorist_killed) as motorist_killed
from fct_accident

--By City
select dl.city as city,
sum(fa.motorist_injured) as motorist_injured, 
sum(fa.motorist_killed) as motorist_killed
from fct_accident fa
JOIN 
    Dim_Location dl ON fa.Location_ID = dl.Location_ID
GROUP BY 
    dl.City;

/* 7. Top 5 areas in 3 cities with most fatal number of accidents */

SELECT count(distinct fa.crash_id) as accidents,
    l.city AS city,  
    l.street_name 
FROM
    fct_accident fa
INNER JOIN
    dim_location l ON fa.Location_ID = L.Location_ID
where
    fa.tot_death_count > 0
    AND l.street_name != 'NA'
GROUP BY
    l.city,
    l.street_name,
	fa.tot_death_count
ORDER BY
    accidents DESC




/*8. Timebased analysis of accidents */

--timeperiod of the day
select t.time_period as time_period,count(distinct fa.crash_id) as count_acc
from fct_accident fa
join dim_time t
on fa.time_sk = t.time_sk
group by time_period

select d.day_str as day,count(distinct fa.crash_id) as count_acc
from fct_accident fa
join dim_date d
on fa.date_sk = d.date_sk
group by d.day_str

select count(distinct fa.crash_id), d.is_weekday as count_acc
from fct_accident fa
join dim_date d
on fa.date_sk = d.date_sk
Group by d.is_weekday


/* 9. contribution factor */

select count(distinct crash_id) as cnt_acct, cf.contribution_factor as contribution_factor
from fct_contribution fc
join dim_contribution_factor cf 
on fc.contribution_factor_sk = cf.contribution_factor_sk
join fct_accident fa
on fa.accident_id = fc.accident_id
where contribution_factor != 'NA'
group by contribution_factor
order by cnt_acct desc



/* 10. Vehicle type */

select count(fa.crash_id) as total_accidents,dv.vehicle_type as vehicle_type
from fct_accident fa 
join dim_vehicle dv
on fa.vehicle_ID = dv.vehicle_ID
group by vehicle_type
order by total_accidents desc

SELECT COUNT(crash_id_cn) AS number_of_accidents
FROM (
    SELECT DISTINCT fa.crash_id AS crash_id_cn, COUNT(DISTINCT dv.vehicle_type) AS vehicle_count_accident
    FROM fct_accident fa 
    JOIN dim_vehicle dv ON fa.vehicle_ID = dv.vehicle_ID
    GROUP BY fa.crash_id
    HAVING COUNT(DISTINCT dv.vehicle_type) > 1
) AS subquery;


