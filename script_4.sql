select 
    ic.year 'Year',
    concat(ic.year, '-01-01') 'First day of year',
    curdate() 'Current date',
    timestampdiff(year, concat(ic.year, '-01-01'), curdate()) 'Difference'
from 
    infectious_cases ic;