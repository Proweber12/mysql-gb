DELIMITER //

CREATE TRIGGER desc_and_name_check_before_insert BEFORE INSERT ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL
    THEN SIGNAL sqlstate '45001' set message_text = "Название или описание продуктов не может быть равным NULL"; 
  end if;
END//

CREATE desc_and_name_check_before_update BEFORE UPDATE ON products FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL
    THEN SIGNAL sqlstate '45001' set message_text = "Название или описание продуктов не может быть равным NULL"; 
  end if;
END//