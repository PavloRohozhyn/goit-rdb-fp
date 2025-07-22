select 
    c.entity 'Entity',
    c.code 'Code',
    avg(ic.number_rabies) 'AVG',
    min(ic.number_rabies) 'MIN',
    max(ic.number_rabies) 'MAX',
    sum(ic.number_rabies) 'SUM'
from
    infectious_cases ic
        join
    countries c on (ic.country_id = c.id)
where
    ic.number_rabies != ''
        and ic.number_rabies is not null
group by c.entity , c.code
order by `AVG` desc
limit 10;