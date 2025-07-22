delimiter $$

create function yeardiff(el year)
returns int
deterministic
begin
    declare first_day_of_year date;
    declare ydiff int;

    set first_day_of_year = concat(el, '-01-01');
    set ydiff = timestampdiff(year, first_day_of_year, curdate());
    
    return ydiff;
end $$

delimiter ;