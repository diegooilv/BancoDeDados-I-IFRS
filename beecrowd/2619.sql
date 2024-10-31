select
    products.name as name_product,
    providers.name as name_provider,
    products.price
from products
join providers on products.id_providers = providers.id
join categories on products.id_categories = categories.id
where products.price > 1000 and categories.name = 'Super Luxury';