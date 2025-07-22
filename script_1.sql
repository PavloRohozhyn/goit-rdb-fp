
-- Task 1.1
create schema if not exists `pandemic` default character set utf8mb4 collate utf8mb4_unicode_ci ;

-- Task 1.2
use pandemic;
 
-- Task 1.3
select * from pandemic.infectious_cases;

-- Task 1 (data correction)
set SQL_SAFE_updateS = 0;
-- Number_yaws
update infectious_cases set Number_yaws = NULLIF(Number_yaws, '') where Number_yaws is not null;
alter table infectious_cases modify column Number_yaws int;
-- polio_cases
update infectious_cases set polio_cases = NULLIF(polio_cases, '') where polio_cases is not null;
alter table infectious_cases modify column polio_cases int;
-- cases_guinea_worm
update infectious_cases set cases_guinea_worm = NULLIF(cases_guinea_worm, '') where cases_guinea_worm is not null;
alter table infectious_cases modify column cases_guinea_worm int;
-- Number_smallpox
update infectious_cases set Number_smallpox = NULLIF(Number_smallpox, '') where Number_smallpox is not null;
alter table infectious_cases modify column Number_smallpox int;
-- Number_cholera_cases
update infectious_cases set Number_cholera_cases = NULLIF(Number_cholera_cases, '') where Number_cholera_cases is not null;
alter table infectious_cases modify column Number_cholera_cases int;
-- Number_rabies
update infectious_cases set Number_rabies = NULLIF(Number_rabies, '') where Number_rabies is not null;
alter table infectious_cases modify column Number_rabies float;
-- Number_malaria
update infectious_cases set Number_malaria = NULLIF(Number_rabies, '') where Number_malaria is not null;
alter table infectious_cases modify column Number_malaria float;
-- Number_hiv
update infectious_cases set Number_hiv = NULLIF(Number_rabies, '') where Number_hiv is not null;
alter table infectious_cases modify column Number_hiv float;
-- Number_tuberculosis
update infectious_cases set Number_tuberculosis = NULLIF(Number_rabies, '') where Number_tuberculosis is not null;
alter table infectious_cases modify column Number_tuberculosis float;
-- Year
update infectious_cases set `Year` = NULLIF(Year, '') where `Year` is not null;
alter table infectious_cases modify column Year YEAR;
set SQL_SAFE_updates = 1;