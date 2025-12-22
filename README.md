# Vehicle Booking Management System – ERD

## Description
This project demonstrates an ERD-based PostgreSQL database design
for a vehicle booking system.

## Tables
- Users (Admin & Customer)
- Vehicles
- Bookings

## Relationships
- One to Many: User → Bookings
- Many to One: Bookings → Vehicle
- One to One (Logical): Each booking connects exactly one user and one vehicle

## Files
- queries.sql → Database schema
- README.md → Project documentation
