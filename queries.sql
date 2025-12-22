
SELECT b.booking_id, u.name AS customer_name, v.name AS vehicle_name, b.start_date, b.end_date, b.status, b.total_cost FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id;


SELECT v.vehicle_id, v.name AS vehicle_name, v.type, v.model, v.rental_price, v.status from vehicles v
LEFT JOIN bookings b ON v.vehicle_id = b.booking_id 
WHERE b.vehicle_id IS NULL;
