
create database ola_analysis;
use ola_analysis;
show databases;
show tables;
select * from cleaned_ola_data;

select count(*)from cleaned_ola_data;

# 1.Retrive all successfull Bookings
select * from cleaned_ola_data 
where Booking_status = "Success";

select count(*) from cleaned_ola_data
where Booking_status = "Success";

# 2. Average Ride distance for each vehicle type
select  
    Vehicle_Type, 
    avg(Ride_Distance) as Avg_ridedistance
from cleaned_ola_data
group by Vehicle_Type;

# 3. Total no of cancelled rides by customers
select 
   Canceled_Rides_by_Customer,
   count(*) as Total_rides
from cleaned_ola_data
where Booking_Status = 'Canceled by Customer'
group by  Canceled_Rides_by_Customer;

# 4.Top 5 customers who booked the highest number of rides
select 
    Customer_ID,
    count(*) as total_rides
from cleaned_ola_data
group by Customer_ID
order by total_rides desc
limit 5;

# 5. No of rides cancelled by drivers due to personal and car-related issues

SELECT Booking_Status,
       Canceled_Rides_by_Driver,
       COUNT(*) 
FROM cleaned_ola_data
GROUP BY Booking_Status, Canceled_Rides_by_Driver;


# 6.  Maximum and Mnimum driver ratings for Prime Sedan bookings
select 
  max(Driver_Ratings) as Max_rating,
  min(Driver_Ratings) as Min_rating, 
  Vehicle_Type from cleaned_ola_data
where Vehicle_Type = 'Prime Sedan';

# 7. Retrieve all rides where payment was made using UPI
select * from cleaned_ola_data
where Payment_Method = 'UPI';

# 8. Average customer rating per vehicle type
select 
    avg(Customer_Rating) as Avg_customer_rating,
    Vehicle_Type 
from cleaned_ola_data
where Customer_Rating is not null
group by Vehicle_Type;

# 9. Total booking value of rides completed successfully
select sum(Booking_Value) as Total_revenue
from cleaned_ola_data
where Booking_Status = 'Success';

# 10.  List all incomplete rides along with the reason
select 
	Booking_ID, 
	Booking_Status, 
	Incomplete_Rides,
	Incomplete_Rides_Reason
from cleaned_ola_data
where Incomplete_Rides = 'Yes'
and Incomplete_Rides_Reason is not null;



	


