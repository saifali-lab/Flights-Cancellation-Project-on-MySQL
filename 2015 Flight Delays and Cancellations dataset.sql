create database Airline;

use Airline;
select * from flights_datasets;

select * from flights_datsets;
select * from airlines;
select * from airports;

select count(*) from flights_datasets;
select count(*) from airlines;
select count(*) from airports;

describe flights_datasets;

select * from flights_datasets;
# Total Flights by airlines

select
      airline,
      count(*) as total_flights
      from flights_datasets
      group by airline
      order by total_flights desc;
describe airlines;
describe airports;

select
      airline,
      count(*) as total_flights
      from flights_datasets
      group by airline
      order by total_flights desc;
      
  select
         airline,
         sum(flight_number) as total_flights
         from flights_datasets
         group by airline
         order by total_flights desc;
         
   # Average departure delay by airline
   select * from flights_datasets;
   select airline,
   avg(departure_delay) as avg_departure_delay
   from flights_datasets
   where departure_delay is not null
   group by airline
order by avg(departure_delay) desc;

# Cancelled flights by reason
  select * from flights_datasets;
  describe flights_datasets;
  select
  cancellation_reason,
  

  count(*) as total_cancelled
  from flights_datasets
  where cancelled = 1
  group by cancellation_reason;
  
  SELECT CANCELLATION_REASON, COUNT(*) AS total_cancelled
FROM flights_datasets
WHERE CANCELLED = 1
GROUP BY CANCELLATION_REASON;

select count(*) as total_cancelled 
from flights_datasets
where cancelled = 1;

# Top 5 airports with most departure
select * from flights_datasets;


select distinct cancelled from flights_datasets;
select distinct cancellation_reason from flights_datasets;
 select * from airport;
 # Top 5 airports with most departure
 select
 origin_airport,
count(*) AS DEPARTURE
From flights_datasets
group by origin_airport
order by count(*) desc limit 5;

# Percentage of delayed vs on-time flight
select * from flights_datasets;
select
sum( case when departure_delay > 0 then 1 else 0 end)* 100.0/count(*) as delayed_percent,
sum(case when departure_delay <=0 then 1 else 0 end) * 100.0/count(*) as ontime_percent
from flights_datasets;

# AirLine with highest average arrival delay per month
select * from airlines;
select * from airports;
select * from flights_datasets;
# AirLine with highest average arrival delay per month
select
month,
airline,
avg(arrival_delay)as avg_arrival_delay
from flights_datasets
group by month,airline
order by avg(arrival_delay) desc ;

# Busiest day of week  Right
select day_of_week,
count(day_of_week) as busiest_day
from flights_datasets
group by day_of_week
order by count(day_of_week) desc;

# Find the flight with Longest delay

select
flight_Number,
count(ARRIVAL_DELAY) as longest_delay
from flights_datasets
group by flight_Number
order by  count(ARRIVAL_DELAY) desc limit 1;

select 
flight_number,
max(arrival_delay) as longest_delay
from flights_datasets
where arrival_delay is not null
group by flight_number
order by max(arrival_delay) desc limit 1;

# Total flights by airline
select * from flights_datasets;
select airline,
count(*) as total_flights
from flights_datasets
group by airline
order by total_flights desc;

# Average departure delay by airline
select airline,
avg(departure_delay) as avg_dearture_delay
from flights_datasets
where departure_delay is not null
group by airline
order by avg(departure_delay) desc;

# Cancelled flight by reason
select * from flights_datasets;
select cancellation_reason,
count(*) as total_cancelled
from flights_datasets
where cancelled = 1
group by cancellation_reason;

# Top 5 airports with most departure
select * from flights_datasets;
select origin_airport,
count(*) as most_departure
from flights_datasets
group by origin_airport
order by most_departure desc limit 5;

# Percentage of delayed vs on-time flight

select * from flights_datasets;

select
sum(case when departure_delay > 1 then 1 else 0 end)* 100.0 /count(*)  as flight_delayed,
sum(case when departure_delay <= 0 then 1 else 0 end) * 100.0/count(*) as on_time_flight
from flights_datasets;

# Airline with highest average delay per month
select * from flights_datasets;
select airline,
       max(arrival_delay) as higest_average_delay
       from flights_datasets
       group by airline
       order by max(arrival_delay) desc;
 
# Busiest day of week
select * from flights_datasets;
select day_of_week,
count(*) as Busiest_day_week
from flights_datasets
group by day_of_week
order by busiest_day_week desc;

# Find the flights with longest delay
select * from flights_datasets;
select
     airline,
     max(arrival_delay) as longest_delay
     from flights_datasets
     group by airline
     order by max(arrival_delay) desc;
     
     select airline,origin_airport,destination_airport, departure_delay
     from flights_datasets
     order by departure_delay desc limit 1;

#Beginner - Level
# List all unique airlines
select * from flights_datasets;
select 
distinct(airline) as unique_airline
from flights_datasets
where airline is not null;

# Count the total number of flights in datasets
select * from flights_datasets;
select airline,
count(*) as total_flights
from flights_datasets
group by airline
order by total_flights desc;

# Find the number of flights cancelled
select * from flights_datasets;
select airline,
flight_number,
cancelled
from flights_datasets 
where cancelled = 1;

# Find the airport with most departures
select * from flights_datasets;
select origin_airport,
count(airline) as most_departures
from flights_datasets
group by origin_airport
order by most_departures desc limit 1;

# Show the number of flights per day of the week
select * from flights_datasets;
select day_of_the_week,
count(airline) as num_of_flights
from
flights_datasets
group by day_of_the_week
order by num_of_flights desc;

# Find the average departure delay of each airline
select * from flights_datasets;
select airline,
avg(departure_delay) as avg_departure_delay
from flights_datasets
group by airline
order by avg_departure_delay desc;

# List all flights where departure delay is more than 2 hours
select  * from flights_datasets;

select  airline,
   count(departure_delay) as departure_delay
   from flights_datasets
   where departure_delay > 2
   group by airline
   order by departure_delay desc;
   
   # Find the minimum,maximum and average arrival delay
   select * from flights_datasets;
   select airline,
   min(arrival_delay) as min_arrival_delay,
   max(arrival_delay) as max_arrival_delay,
   avg(arrival_delay) as avg_arrival_delay
   from flights_datasets
   group by airline
   order by min_arrival_delay desc,max_arrival_delay desc,avg_arrival_delay desc;
   
   # Count the number of flights per month
   select * from flights_datasets;
   select
   month,
   count(airline) as num_of_flights
   from flights_datasets
   group by month
   order by num_of_flights desc;
   
   
   
   # Intermediate
   # Find the busiest day (most flight) in the datasets
   select * from flights_datasets;
select day_of_week,
count(*) as busiest_day
from flights_datasets
group by day_of_week
order by busiest_day desc limit 1;

# Which airline has the highest average departure delay

select airline,
avg(departure_delay) as avg_departure_delay
from flights_datasets
group by airline
order by avg_departure_delay desc limit 1;

# Find the top 5 routes (origin - destination) with the most flight
select * from flights_datasets;  # Wrong
select 
origin_airport,
destination_airport,
max(airline) as most_flight
from flights_datasets
group by origin_airport,
destination_airport
order by most_flight 
 limit 5;
 
 select 
 origin_airport,
 destination_airport,
 count(*) as total_flights
 from flights_datasets
 group by origin_airport,
 destination_airport
 order by total_flights
 desc limit 5;
 
 
 # Find the flight with Longest departure delay
 select * from flights_datasets;
 select airline,
 max(departure_delay) as longest_departure_delay
 from flights_datasets
 group by airline
 order by longest_departure_delay desc limit 1;
 
 # Find the flight with Longest arrival delay
 select airline,
 max(arrival_delay) as Longest_arrival_delay
 from flights_datasets
 group by airline
 order by Longest_arrival_delay desc limit 1;
 
 # Show the number of flights cancelled per airline
 select cancelled,
 count(*) as cancelled_per_airline
 from flights_datasets
 where cancelled = 1
 group by cancelled
 order by cancelled_per_airline ;
 
 select airline,
  count(*) as cancelled_per_airline
 from flights_datasets
 where cancelled = 1
 group by airline
 order by cancelled_per_airline desc;
 
 
 
 # For each airline, show the percentage of cancelled flights
 select
 airline,
 sum(case
 when cancelled > 0 then 1 else 0 end * 100 /count(*) )as percentage_of_cancelled_flight
 from flights_datasets
 group by airline;
 
 
 select
 airline,
 (sum(case
 when cancelled = 1 then 1 else 0 end)*100/count(*)) as percentage_of_cancelled_flight
 from flights_datasets
 group by airline
 order by percentage_of_cancelled_flight desc;
 # Show the average departure delay by day of the week
 select * from flights_datasets;
 select 
 day_of_week,
 avg(departure_delay) as avg_dept_delay
 from flights_datasets
 group by day_of_week
 order by avg_dept_delay desc ;
 
 # Show the airline with the shortest average arrival delay
 select
 airline,
 avg(arrival_delay) as shortest_avg_delay
 from flights_datasets
 group by airline
 order by shortest_avg_delay asc ;
 
 # Which origin airport had the highest percentage of late departure
 select * from flights_datasets; 
 select
 origin_airport,sum(
 case
 when departure_delay < 1 then "Low" else "high" end) * 100/count(departure_delay)  as late_departure
 from flights_datasets
 group by origin_airport
 order by late_departure desc limit 1;
 
 select
 origin_airport,
 (sum(case
 when departure_delay < 0 then 1 else 0 end) * 100/count(*)) as late_departure
 from flights_datasets
 group by origin_airport
 order by late_departure desc limit
 1;
 
 
 # 3 Find the number of flights cancelled
 select airline,
flight_number,
cancelled
from flights_datasets 
where cancelled = 1;

select count(*) as cancelled_flights
from flights_datasets
where cancelled = 1;

# which origin airport had the highest percentage of late departures
select * from flights_datasets;
select origin_airport,
(sum(case
when departure_delay > 0 then 1 else 0 end)*100.0/count(*)) as late_departures
from flights_datasets
group by origin_airport
order by late_departures desc limit 1;

select origin_airport,
       (sum(case when departure_delay > 0 then 1 else 0 end) * 100.0 / count(*)) as late_departure_percentage
from flights_datasets
group by origin_airport
order by late_departure_percentage desc
limit 1;

# Advance-level queries

# Find the most common cancellation reason
select * from flights_datasets;

select * from airports;
select * from airlines;
select * from flights_datasets;


select cancellation_reason,
count(*) as cancellation_reason
from flights_datasets
group by most_reason
order by most_reason ;

# Find the top 5 airlines that had the most flights from a specific airport
select * from flights_datasets;
select airline,
specific_airport
from ( select origin_airport,
count(*) as specific_airport
from flights_datasets
group by origin_airport
order by specific_airport desc limit 1)
as T
order by airline;

select airline,
count(*) as total_airline
from flights_datasets
where origin_airport  = "ATL"
group by airline
order by  total_airline desc
LIMIT  5;

# For each airline, Find the route (origin - destination) with the higest number of flights
select * from flights_datasets;
select airline,
count(*) as total_flights,
origin_airport,
destination_airport
from flights_datasets
group by origin_airport,
destination_airport
order by total_flights desc;

# Find the top 5 airports with the most incoming flights
select * from flights_datasets;
select destination_airport,
count(*) as incoming_flights
from flights_datasets
group by destination_airport
order by
incoming_flights desc limit 5;

# Find flights where departure delay is more than the arrival delay
select * from flights_datasets;
select airline,
flight_number,
origin_airport,
destination_airport,
departure_delay,
arrival_delay
from flights_datasets
where departure_delay > arrival_delay;

# for each airline, find the month with highest average delay
select * from flights_datasets;
select month,
airline,
avg(departure_delay) as avg_departure_delay
group by airline,month
order by avg_departure_delay desc;

# Find the airline with maximum total delay
select * from flights_datasets;
select airline,
max(departure_delay) as maximum_departure_delay
from flights_datasets
group by airline
order by maximum_departure_delay desc ;

# Find the top 3 airlines with the highest on-time percentage
select airline,
(sum(case when arrival_delay <= 0 then 1 else 0 end )*100.0/count(*)) as ontime_percentage
from flights_datasets
group by airline
order by ontime_percentage desc limit 3;
 


# List the airlines that had more than 10,000 flights
select airline,
count(*) as total_airlines
from flights_datasets
group by airline
having airline > 10000
order by total_airlines desc;

# find the top 10 routes with the longest average delay
select * from flights_datasets;
select
origin_airport,
destination_airport,
avg(arrival_delay) as avg_arrival_delay
from flights_datasets
group by origin_airport,destination_airport
order by avg_arrival_delay
limit 10;

# Advance-level queries

# Find the most common cancellation reason
select * from flights_datasets;

select * from airports;
select * from airlines;
select * from flights_datasets;


select cancellation_reason,
count(*) as cancellation_reason
from flights_datasets
group by most_reason
order by most_reason ;

# Find the top 5 airlines that had the most flights from a specific airport
select * from flights_datasets;
select airline,
specific_airport
from ( select origin_airport,
count(*) as specific_airport
from flights_datasets
group by origin_airport
order by specific_airport desc limit 1)
as T
order by airline;

select airline,
count(*) as total_airline
from flights_datasets
where origin_airport  = "ATL"
group by airline
order by  total_airline desc
LIMIT  5;

# For each airline, Find the route (origin - destination) with the higest number of flights
select * from flights_datasets;
select airline,
count(*) as total_flights,
origin_airport,
destination_airport
from flights_datasets
group by origin_airport,
destination_airport
order by total_flights desc;

# Find the top 5 airports with the most incoming flights
select * from flights_datasets;
select destination_airport,
count(*) as incoming_flights
from flights_datasets
group by destination_airport
order by
incoming_flights desc limit 5;

# Find flights where departure delay is more than the arrival delay
select * from flights_datasets;
select airline,
flight_number,
origin_airport,
destination_airport,
departure_delay,
arrival_delay
from flights_datasets
where departure_delay > arrival_delay;

# for each airline, find the month with highest average delay
select * from flights_datasets;
select month,
airline,
avg(departure_delay) as avg_departure_delay
group by airline,month
order by avg_departure_delay desc;

# Find the airline with maximum total delay
select * from flights_datasets;
select airline,
max(departure_delay) as maximum_departure_delay
from flights_datasets
group by airline
order by maximum_departure_delay desc ;

# Find the top 3 airlines with the highest on-time percentage
select airline,
(sum(case when arrival_delay <= 0 then 1 else 0 end )*100.0/count(*)) as ontime_percentage
from flights_datasets
group by airline
order by ontime_percentage desc limit 3;
 


# List the airlines that had more than 10,000 flights
select airline,
count(*) as total_airlines
from flights_datasets
group by airline
having airline > 10000
order by total_airlines desc;

# find the top 10 routes with the longest average delay
select * from flights_datasets;
select
origin_airport,
destination_airport,
avg(arrival_delay) as avg_arrival_delay
from flights_datasets
group by origin_airport,destination_airport
order by avg_arrival_delay
limit 10;

 for each airline,rank their flight by departure delay
select airline,
flight_number,
departure_delay,
rank() over(partition by airline order by departure_delay desc) as rank_flights
from flights_datasets;

# for each month, find the airline with the worst average arrival delay
select month,
airline,
avg(arrival_delay) over(partition by month order by airline) as worst_arrival_delay
from flights_datasets;



select
month,
airline,
avg_arrival_delay,
rank() over(partition by month order by avg_arrival_delay desc) as worst_avg_delay
from ( select month,
              airline,
              avg(arrival_delay) as avg_arrival_delay
              from flights_datasets
              group by month,airline) as t ;
              
     # Find the busiest route per airline using rank()

     select
     airline,
     origin_airport,
     destination_airport,
     busiest_route ,
     rank() over(partition by airline order by busiest_route desc) as busy_road
     from ( select airline,
     origin_airport,
     destination_airport,
	count(*) as busiest_route
    from flights_datasets
    group by airline,
     origin_airport,
     destination_airport) as t;
     
     # for each day of the week , find the top 3 airlines with most flights
select * from flights_datasets;
select day_of_week,
airline,
most_flights,
rank() over(partition by day_of_week order by most_flights desc) as flights_most
from ( select
        day_of_week,
        airline,
        count(*) as most_flights
        from flights_datasets
        group by day_of_week,airline
        order by most_flights desc limit 3) as t;
	
    select * from
    ( select day_of_week,
            airline,
            count(*) as most_flights,
            rank() over(partition by day_of_week order by count(*) desc) as flight_rank
            from flights_datasets
            group by day_of_week,airline
            ) as t
            where flight_rank <=3;
    
            
            # difference between group by and partition by
            SELECT airline, AVG(departure_delay)
FROM flights_datasets
GROUP BY airline;

SELECT airline,
       flight_number,
       departure_delay,
       AVG(departure_delay) OVER (PARTITION BY airline) AS avg_delay
FROM flights_datasets;

    # Show the month-over-month trend in average delay for each airline ( using LAG )
            
-- Show month-over-month trend in average delay for each airline
SELECT
    airline,
    month,
    AVG(arrival_delay) AS avg_delay,
    LAG(AVG(arrival_delay)) OVER (
        PARTITION BY airline ORDER BY month
    ) AS prev_month_delay,
    (AVG(arrival_delay) - LAG(AVG(arrival_delay)) OVER (
        PARTITION BY airline ORDER BY month
    )) AS mom_change
FROM flights_datasets
GROUP BY airline, month
ORDER BY airline, month;

# Find the top 5 flights with the longest cumulative delays (use SUM() OVER).

select airline,
      longest_delays
      from ( select
      airline,
      sum(arrival_delay)  over(partition by airline order by longest_delay) as cumulative_delays
      from flights_datasets
      ) as t
      group by airline;
      
      select
      flight_number,
      origin_airport,
      destination_airport,
      sum(arrival_delay)  over(partition by flight_number) as total_delay
      from flights_datasets
      group by flight_number,origin_airport,destination_airport
      order by total_delay desc
      limit 5;
      
      # for each origin airport, find the airline with the worst average delay
      
      select 
      airline,
      origin_airport,
      avg_delay,
      rank()  over(partition by origin_airport order by avg_delay desc) as worst_avg_delay
      from ( select 
      
      from ( select airline,
                    origin_airport,
                    avg(arrival_delay) as avg_delay
                    from flights_datasets
                    group by origin_airport,airline) t
                    where avg_delay is not null
                    order by origin_airport, worst_avg_delay;
                    
     # for each route, calculate the avg delay and rank routes per airline
     select
     airline,
     origin_airport,
     destination_airport,
     avg_arrival_delay,
     rank() over(partition by airline order by avg_arrival_delay desc) as rank_routes
     from (
     select airline,
     origin_airport,
     destination_airport,
     avg(arrival_delay) as avg_arrival_delay
     from flights_datasets
     group by airline, origin_airport,
     destination_airport
     ) t
     order by airline,rank_routes;
     
     select * from flights_datasets;
     # Find the top 3 airports with the worst average depature delays per month
     select* from(select month,
     origin_airport,
     avg_departure_delays,
     rank() over(partition by month order by avg_departure_delays desc) as rank_airports
     from ( select 
     month,
     origin_airport,
     avg(departure_delay) as avg_departure_delays
     from flights_datasets
     group by month,origin_airport) as t
     ) ranked 
     where rank_airports <=3
     order by month, rank_airports;
     
   #  Find the percentage of flights delayed vs. on-time per airline.
   select * from flights_datasets;
   select 
   airline,
   sum(case when departure_delay > 0 then 1 else 0 end) as delayed_flight,
   sum(case when departure_delay <= 0 then 1 else 0 end) as on_time_flight,
   round(100.0*sum(case when departure_delay > 0 then 1 else 0 end ) / count(*),2) as pct_delayed,
   round(100.0 * sum( case when departure_delay < 0 then 1 else 0 end)/ count(*),2) as pct_on_time
   from flights_datasets
   group by airline
   order by pct_delayed desc;
   

















 
 



      













