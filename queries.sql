
SELECT b.booking_id, u.name AS customer_name, v.name AS vehicle_name, b.start_date, b.end_date, b.status FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN vehicles v ON b.vehicle_id = v.vehicle_id;

SELECT v.vehicle_id, v.name AS vehicle_name, v.type, v.model, v.rental_price, v.status from vehicles v
LEFT JOIN bookings b ON v.vehicle_id = b.booking_id 
WHERE NOT EXISTS (SELECT * FROM bookings b WHERE b.vehicle_id = v.vehicle_id);

SELECT * FROM vehicles
WHERE vehicles.status = 'available' AND vehicles.type = 'car';

SELECT v.name AS vehicle_name, COUNT(b.booking_id) AS total_bookings FROM vehicles v
JOIN bookings b ON v.vehicle_id = b.vehicle_id
GROUP BY v.name HAVING COUNT(b.booking_id) > 2;
