use sakila;
#Actors of one film using join tables 

select first_name from actor 
inner join film_actor 
using (actor_id)
where film_id = 1;

# Actor of one film using sub-query 

select first_name from actor 
where actor_id in (select actor_id  	
					from film_actor
                    where film_id = 1);
                    
select first_name from actor
where actor_id = (select actor_id 
						from film_actor
                        where film_id = (select film_id
											from film 
                                            where title ="Bucket Brotherhood"));
                    
 #first names of actors who appierd in films that are present in the category action 
 
 
 select first_name from actor
 where actor_id in (select actor_id 
					from film_actor
                    where film_id in (select film_id
										from film_category 
										where category_id = (select category_id
															from category 
                                                            where name ="action")))
                                                            
                                                            
                                                            
                                                            