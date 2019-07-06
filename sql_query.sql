SELECT 
  d_date.date_actual, 
  weather.max_temp, 
  weather.min_temp, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
WHERE 
  weather.dateint = 12252014 
  OR weather.dateint = 12252013 
  OR weather.dateint = 12252015 
  OR weather.dateint = 12252016 
  OR weather.dateint = 12252017;





SELECT 
  d_date.day_name, 
  avg(weather.max_temp), 
  avg(weather.min_temp), 
  avg(citibike.daily_trips) 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
GROUP BY 
  d_date.day_name;






SELECT 
  d_date.month_name, 
  avg(weather.max_temp), 
  avg(weather.min_temp), 
  avg(citibike.daily_trips) as ridership 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
GROUP BY 
  d_date.month_name 
ORDER BY 
  ridership DESC;
  
  
  

SELECT 
  d_date.date_actual, 
  weather.max_temp, 
  weather.min_temp, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  citibike.daily_trips DESC;





SELECT 
  d_date.date_actual, 
  weather.max_temp, 
  weather.min_temp, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  weather.max_temp DESC;






SELECT 
  d_date.date_actual, 
  weather.max_temp, 
  weather.min_temp, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  weather.max_temp ASC;
  
  
  

SELECT d_date.date_actual, 
weather.snow_depth_in_inches, 
citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  weather.snow_depth_in_inches DESC;
  
  
  
SELECT 
  d_date.date_actual, 
  weather.percip_in_inches, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  weather.percip_in_inches DESC;
  
  
  
  
  
SELECT 
  d_date.date_actual, 
  weather.snow_in_inches, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
ORDER BY 
  weather.snow_in_inches DESC;
  
  
  
  
  
SELECT 
  d_date.date_actual, 
  weather.max_temp, 
  weather.min_temp, 
  citibike.daily_trips 
FROM 
  weather 
  INNER JOIN citibike on weather.dateint = citibike.dateint 
  INNER JOIN d_date on weather.dateint = cast(d_date.mmddyyyy AS int) 
WHERE 
  weather.dateint = 07042014 
  OR weather.dateint = 07042013 
  OR weather.dateint = 07042015 
  OR weather.dateint = 07042016 
  OR weather.dateint = 07042017;
