use sakila;

# 2. Explore tables by selecting all columns from each table or using the in built review features for your client.

select * from actor;
select * from address;
select * from category;
select * from city; 
select * from country; 
select * from customer;
select * from film;
select * from film_actor; 
select * from film_category;
select * from film_text;
select * from inventory;
select * from language;
select * from payment; 
select * from rental;
select * from staff; 
select * from store; 

# 3. Select one column from a table. Get film titles.

select title from film;

# 4. Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.

select * from language;
select name as language from language;

#5.1 Find out how many stores does the company have?

select count(store_id)  from store;

#5.2 Find out how many employees staff does the company have?

select count(staff_id) from staff; 

#5.3 Return a list of employee first names only?

select first_name from staff;

use bank; 

#Query 1. Get the id values of the first 5 clients from district_id with a value equal to 1.

select client_id from client
where district_id = (1);

#Query 2. In the client table, get an id value of the last client where the district_id is equal to 72.

select client_id from client
where district_id = (72)
order by client_id desc
limit 1;

# Query 3 Get the 3 lowest amounts in the loan table.
 
 select amount from loan
 order by amount 
 limit 3;
 
 # Query 4 What are the possible values for status, ordered alphabetically in ascending order in the loan table?
 
 select distinct (status) from loan
 order by status asc;
 
 
#Query 5 What is the loan_id of the highest payment received in the loan table?

select loan_id from loan
order by payments desc
limit 1;
 
# Query 6 What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount 

select account_id, amount from loan
order by account_id 
limit 5;

#Query 7 What are the top 5 account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

select account_id from loan
where duration = 60
order by amount 
limit 5;

# Query 8 What are the unique values of k_symbol in the order table?

select distinct (k_symbol) from `order`
where k_symbol <> " ";

# Query 9 In the order table, what are the order_ids of the client with the account_id 34?

select order_id from `order` 
where account_id = 34;

# Query 10 In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

select distinct (account_id) from `order` 
where order_id between 29540 and 29560;

# Query 11 In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

select amount from `order`
where account_to = 30067122;

#Query 12 In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

select trans_id, date, type, amount from trans
where account_id = 793
order by date desc
limit 10


