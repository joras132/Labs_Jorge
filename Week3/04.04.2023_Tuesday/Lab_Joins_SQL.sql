# 1 Which actor has appeared in the most films?
#Hint:  group by actor_id

use sakila;

select * from film_actor;
select a.first_name, a.last_name, count(b.film_id) 
from actor as a
inner join film_actor as b 
using (actor_id)
group by actor_id 
order by count(film_id) desc
limit 1;

# 2. Most active customer (the customer that has rented the most number of films)

select a.first_name, a.last_name, count(b.rental_id)
from customer as a 
inner join rental as b 
using (customer_id)
group by customer_id
order by count(rental_id) desc
limit 1;

# 3. List number of films per category.

select a.name, count(b.film_id)
from category as a 
inner join film_category as b 
using (category_id)
group by category_id;

# 4. Display the first and last names, as well as the address, of each staff member.

select a.first_name, a.last_name, b. address
from staff as a 
inner join address as b 
using (address_id);

# 5. Get films titles where the film language is either English or italian, and whose titles starts with letter "M" , sorted by title descending.

select a.title, b.name
from film as a
inner join language as b 
using (language_id)
where title like'M%' and name =  ("English") or  ("Italian");

# 6. Display the total amount rung up by each staff member in August of 2005.

select a.first_name, a.last_name, sum(b.amount)
from staff as a 
inner join payment as b
using (staff_id)
where payment_date > "2005-08-01" AND payment_date < "2005-08-31"
group by staff_id
order by staff_id desc;

# 7. List each film and the number of actors who are listed for that film.

select a.title, count(b.actor_id)
from film as a
inner join film_actor as b
using (film_id)
group by title 
order by count(b.actor_id) desc;

# 8. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
 
select a.first_name, a.last_name, sum(b.amount)
from customer as a 
inner join payment as b
using (customer_id)
group by (customer_id)
order by (last_name); 

# 9. Write sql statement to check if you can find any actor who never particiapted in any film.

select a.actor_id, b.film_id
from film_actor as a 
inner join film as b
using (film_id)
where film_id = ("");






