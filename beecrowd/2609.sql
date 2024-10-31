select 
    categories.name,
    sum(products.amount) as amount_sum
from products
join categories on products.id_categories = categories.id
group by categories.name;