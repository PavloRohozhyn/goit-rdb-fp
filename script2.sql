use pandemic;
set sql_safe_updates = 0;
-- countries
create table countries (
    id int auto_increment primary key,
    entity varchar(255) not null unique,
    code varchar(255) not null unique
);
-- update code
update infectious_cases
set code = entity
where code = '';
-- data for countries
insert into countries (entity, code)
select distinct entity, code
from infectious_cases;
-- foreign key 
alter table infectious_cases
add column country_id int,
add foreign key (country_id) references countries(id) on delete cascade;
-- update
update infectious_cases ic
join countries c on ic.entity = c.entity and ic.code = c.code
set ic.country_id = c.id;
-- delete
alter table infectious_cases drop column entity, drop column code;
set sql_safe_updates = 1;