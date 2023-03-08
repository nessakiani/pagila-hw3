/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query that lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 *
 * HINT:
 * This can be solved with a self join on the film_actor table.
 */

select film_b.title from film_actor film_actor_a
join film_actor film_actor_b using (actor_id)
join film film_a on (film_actor_a.film_id = film_a.film_id)
join film film_b on (film_actor_b.film_id = film_b.film_id)
where film_a.title = 'AMERICAN CIRCUS'
group by film_b.title
having count(actor_id) >= 2
order by film_b.title;
