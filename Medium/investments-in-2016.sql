SELECT round(sum(tiv_2016),2) as tiv_2016    from Insurance
WHERE tiv_2015 in (
    SELECT tiv_2015 from Insurance 
    group by (tiv_2015) having COUNT(*) > 1
)
AND (lat,lon) in (SELECT 
lat,lon from Insurance
 group by lat,lon having COUNT(*) = 1);