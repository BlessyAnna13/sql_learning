SELECT product.pro_name, category.category_name FROM product
right join category ON product.category_id = category.category_id;
