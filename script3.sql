select 
    c.entity 'entity',
    c.code 'code',
    avg(ic.number_rabies) 'avg',
    min(ic.number_rabies) 'min',
    max(ic.number_rabies) 'max',
    sum(ic.number_rabies) 'sum'
from
    infectious_cases ic
        join
    countries c on (ic.country_id = c.id)
where
    ic.number_rabies != ''
        and ic.number_rabies is not null
group by c.entity , c.code
order by `avg` desc
limit 10;