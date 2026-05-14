#########      OLA--SYSTEM MANAGEMENT      #########


CREATE DATABASE IF NOT EXISTS OLA;
USE OLA;
CREATE TABLE if not exists BOOKINGS(Date DATE,
Time	TIME,
Booking_ID	VARCHAR(20),
Booking_Status	VARCHAR(20),
Customer_ID	VARCHAR(10),
Vehicle_Type VARCHAR(20),
Pickup_Location VARCHAR(50),	
Drop_Location	VARCHAR(50),
V_TAT	INT,
C_TAT	INT,
Canceled_Rides_by_Customer	VARCHAR(255),
Canceled_Rides_by_Driver	VARCHAR(255),
Incomplete_Rides BOOLEAN,	
Incomplete_Rides_Reason	VARCHAR(50),
Booking_Value	DECIMAL(10,2),
Payment_Method	VARCHAR(50),
Ride_Distance	DECIMAL(10,2),
Driver_Ratings	DECIMAL(2,1),
Customer_Rating	DECIMAL(2,1),
Vehicle_Images VARCHAR(255)
);
SET GLOBAL LOCAL_INFILE=1;
LOAD DATA LOCAL INFILE 'C:/pppp/BOOKINGS.csv'
INTO TABLE bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SELECT * FROM BOOKINGS;
SELECT 
    COUNT(*) as TOTAL_DATA
FROM
    BOOKINGS;

##-- All successful bookings --##


CREATE OR REPLACE VIEW Succesful_Bookings as 
SELECT * FROM BOOKINGS
WHERE Booking_Status='Success';
#intrieve all successful bookings#
select* From Succesful_Bookings ;

##--average  ride distance for each vehicle type--##

CREATE OR REPLACE View Avg_dist_for_each_type as
SELECT Vehicle_Type,AVG(Ride_Distance)
as Avg_dist FROM Bookings
Group by Vehicle_Type;
##--average  ride distance for each vehicle type--##
select *from  Avg_dist_for_each_type;


## Total no of rides cancelled by customers--##

CREATE OR REPLACE view canceled_by_customers as 
select COUNT(*) FROM bookings
where Booking_status='Canceled by Customer';
## Total no of rides cancelled by customers--##
select * from canceled_by_customers;


## Top 10 customers who booked the highest number of rides##


CREATE OR REPLACE view top_10_customers as
select Customer_Id,count(Booking_Id) as total_rides
from bookings
group by Customer_id
order by total_rides DESC LIMIT 5;
## Top 10 customers who booked the highest number of rides##
select * from top_10_customers;


##The total of rides cancelled by drivers due to personal and car related issue##

CREATE OR REPLACE view Rides_cancelled_by_driver_issue as
SELECT count(*)  from bookings 
WHERE Booking_status='Canceled by Driver'
AND (Canceled_Rides_by_Driver='Personal & Car related issue');
##The total of rides cancelled by drivers due to personal and car related issue##
select * from Rides_cancelled_by_driver_issue;

## The max & min rating for vevicle types##

CREATE OR REPLACE VIEW max_min_driver_rating AS
SELECT Vehicle_Type,
MAX(Driver_ratings) AS Max_rating,
MIN(Driver_ratings) AS min_rating 
FROM bookings
where Driver_ratings !='NULL'
GROUP BY Vehicle_Type;
## The max & min rating for vevicle types##
select * from max_min_driver_rating;


## LIst of rides where payments were made using UPI ##


CREATE OR REPLACE view UPI_payments as 
select *from bookings 
where Payment_Method='UPI'
order by  Booking_Value DESC limit 100;
## LIst of rides where payments were made using UPI ##
select * from  UPI_payments;


## Driver Incompleted Rides ##


CREATE OR REPLACE view Driver_Incomplete_Rides as
SELECT Incomplete_Rides_Reason, COUNT(*) AS Total_Count
FROM BOOKINGS
WHERE Incomplete_Rides = 'YES'
GROUP BY Incomplete_Rides_Reason
ORDER BY Total_Count DESC
LIMIT 5;
## Driver Incompleted Rides ##
select * from Driver_Incomplete_Rides;


###  Rides cancelled by customer   ###
CREATE OR REPLACE view Most_cancelled_by_customer as
SELECT Customer_ID, COUNT(*) AS Cancellation_Count
FROM BOOKINGS
WHERE Canceled_Rides_by_Customer != 'NULL'
GROUP BY Customer_ID
ORDER BY Cancellation_Count DESC
LIMIT 15;
##  Rides cancelled by customer   ##
select * from Most_cancelled_by_customer;


###  Frequent Location & Time  ###
CREATE OR REPLACE view Busy_Location_and_time as
SELECT Pickup_Location, 
       HOUR(Time) AS Pickup_Hour,
       COUNT(*) AS Total_Rides
FROM BOOKINGS
GROUP BY Pickup_Location, HOUR(Time)
ORDER BY Total_Rides DESC;

select * from Busy_Location_and_time;	

							####_____________________________________________________####





