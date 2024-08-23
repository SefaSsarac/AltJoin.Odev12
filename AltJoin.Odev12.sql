--1.PRATİK

SELECT COUNT(*) AS FilmSayısı
FROM film
WHERE length > (SELECT AVG(length) FROM film);

--2.PRATİK

SELECT COUNT(*) AS FilmSayısı
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);


--3.PRATİK

SELECT * 
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);


--4.PRATİK

SELECT customer_id, COUNT(*) AS AlışverişSayısı
FROM payment
GROUP BY customer_id
ORDER BY AlışverişSayısı DESC;
