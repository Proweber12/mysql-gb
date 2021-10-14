-- ѕол€ в моих таблиах и таблицах, которые описываютс€ на сайте немного различаютс€ (но суть не изменилась), поэтому адаптировал немного задание под себ€

drop table if exists logs;
create table logs (
  created_at datetime not null,
  table_name varchar(85) not null,
  id_primary_key BIGINT not null,
  field_name varchar(85) not null
) ENGINE = ARCHIVE;

delimiter //
drop trigger if exists watchlog_users//
create trigger watchlog_users after insert on users
for each row
begin
	insert into logs(created_at, table_name, id_primary_key, field_name) values(now(), 'users', new.id, new.email);
end//

drop trigger if exists watchlog_categories//
create trigger watchlog_categories after insert on categories
for each row
begin
	insert into logs(created_at, table_name, id_primary_key, field_name) values(now(), 'categories', new.id, new.name);
end//

drop trigger if exists watchlog_products//
create trigger watchlog_products after insert on products
for each row
begin
	insert into logs(created_at, table_name, id_primary_key, field_name) values(now(), 'products', new.id, new.name);
end//

delimiter ;

SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM logs;

INSERT INTO users (email, phone, password_hash)
VALUES ('tjjyttrdgi@gmail.com', '2356445353342', 'ggorirhoughhfhvfgjofinsofidbn');

INSERT INTO categories (name)
VALUES ('Laptop');

INSERT INTO products (name, category_id, brand_id, specifications, description, reviews, price)
VALUES ('Honor 9 Lite', 3, 7, 'gkggge', 'ghsrkrjrw', 'hjrpjwrr', 85);


SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM logs;