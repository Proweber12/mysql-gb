DELIMITER //

CREATE PROCEDURE rec_fib(num INT, OUT result INT)
BEGIN
  DECLARE num_1 INT;
  DECLARE num_2 INT;

  IF (num=0) THEN
    SET result=0;
  ELSEIF (num=1) then
    SET result=1;
  ELSE
    CALL rec_fib(num-1,num_1);
    CALL rec_fib(num-2,num_2);
    SET result=(num_1 + num_2);
  END IF;
END//