-- я делал тыс€чу пользователей дабы не завис на долго компьютер, но итоговую программу переделал под миллион пользоватетй

drop table if exists million_users;
create table million_users (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);

delimiter //

DROP PROCEDURE IF EXISTS generator_users//
CREATE PROCEDURE generator_users ()
BEGIN
	DECLARE i int DEFAULT 1000000;
	DECLARE x int DEFAULT 0;

	while i > 0 do
		INSERT INTO million_users(name) values(concat('user_', x));
		SET x = x + 1;
		SET i = i -1;
	END while;
END//

delimiter ;

call generator_users;

SELECT * FROM million_users;