SELECT
	concat(ap.address, ' ', ap.address_2) as apartment_address,
	book.booked_for as nights

FROM apartments as ap
JOIN bookings as book
USING (booking_id)
ORDER by ap.apartment_id;