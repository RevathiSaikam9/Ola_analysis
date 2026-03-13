# OLA Ride Analysis 🚖

## Project Overview

This project analyzes OLA ride booking data to understand ride demand, customer behavior, cancellations, and revenue trends.
The goal is to extract meaningful insights that help improve ride efficiency and support data-driven decision-making.

## Tools Used

* SQL – Data querying and analysis
* Excel – Data cleaning and preprocessing
* Python – Exploratory Data Analysis (EDA)
* Jupyter Notebook – Data exploration and visualization
* Power BI – Dashboard creation and visualization

## Dataset

The dataset contains ride booking details such as:

* Ride ID
* Customer ID
* Driver ID
* Booking Time
* Ride Status
* Pickup Location
* Drop Location
* Fare Amount

## Exploratory Data Analysis (EDA)

EDA was performed using Python in Jupyter Notebook to understand the dataset and identify patterns.

Key EDA steps include:

* Checking missing values
* Data cleaning and preprocessing
* Analyzing ride booking trends
* Distribution of ride fares
* Ride status analysis (Completed / Cancelled)
* Location-wise ride demand
* Peak booking hours visualization

Python libraries used:

* Pandas
* NumPy
* Matplotlib
* Seaborn

## Key Business Questions

* What are the peak booking hours?
* Which locations have the highest ride demand?
* What is the cancellation rate of rides?
* Which ride types generate the most revenue?
* How does ride demand change over time?

## Dashboard

An interactive dashboard was created using Power BI to visualize:

* Ride demand trends
* Booking status distribution
* Revenue analysis
* Top pickup locations
* Ride cancellations

## Key Insights

* Peak ride bookings occur during morning and evening commute hours.
* Certain locations generate significantly higher ride demand.
* A noticeable percentage of rides are cancelled by either drivers or customers.
* Revenue varies depending on ride type and time of day.

## Project Structure

OLA-Ride-Analysis
│
├── Dataset
│   ola_sample_data.csv
│
├── SQL
│   ola_queries.sql
│
├── EDA
│   ola_eda.ipynb
│
├── Dashboard
│   dashboard.png
│
└── README.md

## Author

Revathi Saikam
Aspiring Data Analyst skilled in SQL, Excel, Power BI, Python, and Data Visualization.
