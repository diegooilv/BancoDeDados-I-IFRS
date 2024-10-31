select
	products.name as name_product, 
    providers.name as name_provider, 
    categories.name as name_categorie
from products
join providers on products.id_providers = providers.id
join categories on products.id_categories = categories.id
where providers.name = 'Sansul SA' and categories.name = 'Imported'
