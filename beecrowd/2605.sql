select 
    products.name as name_products, 
    providers.name as name_providers
from  providers
JOIN products 
on providers.id = products.id_providers
where products.id_categories = 6;
