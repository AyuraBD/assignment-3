# Vehicle Booking Management System – ERD

## Description
This project shows an Entity Relationship Diagram(ERD) -based PostgreSQL database design for a vehicle booking managembet system.

The main goal of the project is to maintain proper relational database modeling, clear entity relationship, and real-world booking logic using SQL.

The system is designed to handle:
- Multiple users with different roles (Admin and Customers)
- Vehicle inventory management
- Vehicle booking records with strong data integrity

This project is ideal for learning and demonstrating database normalization, foreign key constraints, and relationship mapping in PostgreSQL

## Database Tables
- users: Supports Admin and Customer roles, 
- vehicles: Managed primarily by Admin users, Helps track availability and usage history
- bookings: Connects users and vehicles, Stores booking-related data such as time period and status


## Relationships
- One to Many: One user can create multiple bookings
- Many to One: Multiple bookings can reference the same vehicle
- One to One (Logical): Each booking connects exactly one user and one vehicle

## Files
- queries.sql --- Database Schema & Query Solutions
- README.md --- Project documentation
