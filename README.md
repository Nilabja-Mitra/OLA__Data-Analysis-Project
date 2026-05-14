# 🚖 Ola SQL Project

## 📌 Overview
This project analyzes Ola ride-booking data using SQL.  
The dataset includes details about bookings, customers, drivers, vehicles, ratings, cancellations, and payments.  
Through structured queries, the project extracts insights into customer behavior, driver performance, operational challenges, and financial metrics.

---

## 🗂️ Dataset Columns
The dataset contains the following fields:

- Date  
- Time  
- Booking_ID  
- Booking_Status  
- Customer_ID  
- Vehicle_Type  
- Pickup_Location  
- Drop_Location  
- V_TAT (Vehicle Turnaround Time)  
- C_TAT (Customer Turnaround Time)  
- cancelled_Rides_by_Customer  
- cancelled_Rides_by_Driver  
- Incomplete_Rides  
- Incomplete_Rides_Reason  
- Booking_Value  
- Payment_Method  
- Ride_Distance  
- Driver_Ratings  
- Customer_Rating  

---

## 🎯 Project Objectives
The project solves the following analytical problems:

1. Retrieve all successful bookings.  
2. Find the average ride distance for each vehicle type.  
3. Get the total number of cancelled rides by customers.  
4. List the top 5 customers who booked the highest number of rides.  
5. Get the number of rides cancelled by drivers due to personal and car-related issues.  
6. Find the maximum and minimum driver ratings for different vehicle types.  
7. Retrieve all rides where payment was made using UPI.  
8. Identify the most busy location and time.  
9. Calculate totals of different incomplete ride reasons.  
10. Find the customer who cancelled the most rides.  

---

## 🛠️ Methodology
- SQL queries were written to directly address each objective.  
- Queries used filtering, grouping, aggregation, and joins to extract insights.  
- The dataset was assumed to be stored in relational tables (`Bookings`, `Customers`, `Drivers`).  
- Each query corresponds to a specific business problem, making the analysis modular and easy to extend.

---

## 📂 Project Structure
The repository is organized as follows:

