/*
 * Compute the number of customers who live outside of the US.
 */

select count(customer_id)
from customer join address using(address_id)
join city using(city_id)
join country using(country_id)
where country != 'United States';
