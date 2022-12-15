SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating) AS average_rating
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE city = 'Vancouver' and property_reviews.rating >= 4
GROUP BY properties.id
LIMIT 10;