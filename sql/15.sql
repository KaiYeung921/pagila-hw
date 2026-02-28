/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


select c.name, count(f.film_id) as "sum" from film as f
join language as l on l.language_id = f.language_id
join film_category as fc on fc.film_id = f.film_id
join category as c on c.category_id = fc.category_id
where l.name = 'English'
group by c.name;
