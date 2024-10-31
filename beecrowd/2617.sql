select 
    products.name as name_product,
    providers.name as name_provider
from products
join providers on products.id_providers = providers.id
where providers.name = 'Ajax SA';