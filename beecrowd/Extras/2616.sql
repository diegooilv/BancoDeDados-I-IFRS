select 
    customers.id as id, 
    customers.name as name
from customers
join locations
on customers.id = locations.id_customers
where locations.id_customers is null
order by customers.id;