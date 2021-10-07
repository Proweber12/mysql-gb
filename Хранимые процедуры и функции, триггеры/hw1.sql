DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
    RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE time INT DEFAULT HOUR(NOW());
    IF (time > 5 AND time < 12) THEN
        RETURN '������ ����!';
    ELSEIF (time > 11 AND time < 18) THEN
        RETURN '������ ����!';
    ELSEIF (time > 17 AND time < 24) THEN
        RETURN '������ �����!';
    ELSE
        RETURN '������ ����!';

    END IF;
END //

DELIMITER ;

SELECT hello();

