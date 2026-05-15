# OLA SQL Project

## Overview
This project analyzes Ola ride-booking data using SQL. The dataset includes details about bookings, customers, drivers, vehicles, ratings, cancellations, and payments. Through structured queries, the project extracts insights into customer behavior, driver performance, operational challenges, and financial metrics.

## Testing Dataset
The dataset contains booking information with the following fields:

| Column | Description |
|--------|-------------|
| Date | Booking date |
| Time | Booking time |
| Booking_ID | Unique booking identifier |
| Booking_Status | Status of the booking |
| Customer_ID | Unique customer identifier |
| Vehicle_Type | Type of vehicle |
| Pickup_Location | Pickup location |
| Drop_Location | Drop location |
| V_TAT | Vehicle Turnaround Time |
| C_TAT | Customer Turnaround Time |
| cancelled_Rides_by_Customer | Customer cancellations |
| cancelled_Rides_by_Driver | Driver cancellations |
| Incomplete_Rides | Incomplete ride count |
| Incomplete_Rides_Reason | Reason for incomplete rides |
| Booking_Value | Booking amount |
| Payment_Method | Payment method used |
| Ride_Distance | Distance of the ride |
| Driver_Ratings | Driver rating |
| Customer_Rating | Customer rating |

File: BOOKINGS.csv

## SQL Queries
SQL queries were created to address the following objectives:

1. Retrieve all successful bookings
2. Find the average ride distance for each vehicle type
3. Get the total number of cancelled rides by customers
4. List the top 5 customers who booked the highest number of rides
5. Get the number of rides cancelled by drivers due to personal and car-related issues
6. Find the maximum and minimum driver ratings for different vehicle types
7. Retrieve all rides where payment was made using UPI
8. Identify the most busy location and time
9. Calculate totals of different incomplete ride reasons
10. Find the customer who cancelled the most rides

File: OLA_COMPLETE_SQL.sql

## Results
The following result files contain the output from the SQL queries:

| Result File | Description |
|-------------|-------------|
| successful booking.csv | All successful bookings from the dataset |
| avg dist for each type.csv | Average ride distance by vehicle type |
| cancelled by customer.csv | Total rides cancelled by customers |
| top 10 customer.csv | Top customers by number of bookings |
| total rides cancelled fordriver issue.csv | Rides cancelled due to driver issues |
| max rating vehicle wise.csv | Maximum driver ratings by vehicle type |
| upi payments.csv | All bookings with UPI payment method |
| most busy location and time.csv | Busiest pickup locations and times |
| total of different types cancellation issue.csv | Cancellation reasons and counts |
| most rides cancelled by customer.csv | Customer with most cancellations |

## Project Objectives
The project addresses the following analytical problems:

- Identify successful bookings and analyze their patterns
- Compare ride distances across different vehicle types
- Analyze customer cancellation behavior
- Identify top customers based on booking frequency
- Understand driver-related issues causing cancellations
- Evaluate driver performance through ratings
- Analyze payment method preferences
- Determine peak hours and locations for operations
- Categorize and quantify reasons for incomplete rides
- Identify problem customers with high cancellation rates

## Methodology
- SQL queries were written directly to address each objective
- Queries used filtering, grouping, aggregation, and joins to extract insights
- The dataset was analyzed as a relational table (Bookings)
- Each query corresponds to a specific business problem
- Results were exported to CSV files for further analysis
