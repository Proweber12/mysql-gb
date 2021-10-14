drop user if exists shop_read;
create user shop_read;
GRANT SELECT ON shop.* TO 'shop_read'@'%';

drop user if exists shop;
create user shop;
GRANT ALL PRIVILEGES ON shop.* TO 'shop'@'%';

FLUSH PRIVILEGES;