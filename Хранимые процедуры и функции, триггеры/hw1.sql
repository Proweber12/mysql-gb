delimiter //

drop function if exists hello//
create function hello() returns TEXT deterministic
begin
	set @times = @times;
	case
	when @times >= "6:00" and @times < "12:00" then return "������ ����";
	when @times >= "12:00" and @times < "18:00" then return "������ ����";
	when @times >= "18:00" and @times < "00:00" then return "������ �����";
	when @times >= "00:00" and @times < "6:00" then return "������ ����";
	end case;
end//

delimiter ;

call hello(); 