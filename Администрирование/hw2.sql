drop table if exists accounts;
create table accounts (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(60),
  password_hash varchar(85) not null
);

INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('11', 'Mueller', '5e2e066bc7996f02c1297d73ecfd5908bfa88867');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('12', 'Imani', '488260ccf71b9905133c11ae9823f07494ce67d8');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('13', 'Krajcik', '082e930f2b7a3f0f27d82e6a9ca1fe2adf3d5fbd');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('15', 'Mante', '95f425b9c26c07f77860d6147a41917489a4c915');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('16', 'Stark', 'ba6a4ee3393026fc8546fba6635c44b422af7b02');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('17', 'Katherine', 'b01cfb6e6187bc65a63a07399e0e77b13aa731fd');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('18', 'Heller', '9b22dc6b1932f8329fbb67c01947c3f82bdf245c');
INSERT INTO `accounts` (`id`, `name`, `password_hash`) VALUES ('19', 'Dweimann', '2118e347ae2c90149835676b4b41b810c06e7d7b');

drop view if exists username;
create or replace view username(id, name) as
select id, name
from accounts;

drop user if exists user_read;
create user user_read;
grant select on amazon.username to 'user_read'@'%';

FLUSH PRIVILEGES;

-- –¿¡Œ“¿≈“
SELECT * FROM amazon.username;

-- Õ≈ –¿¡Œ“¿≈“
SELECT * FROM amazon;