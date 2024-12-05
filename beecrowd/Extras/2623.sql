select products.name, categories.name
from products
join categories
on products.id_categories = categories.id
where (products.amount > 100) and (categories.id >= 1 and categories.id <= 9)
order by categories.id asc;