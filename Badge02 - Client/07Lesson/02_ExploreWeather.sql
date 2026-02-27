select distinct Country from history_day order by 1 desc;

Select distinct postal_code
from history_day
where 
country = 'US'
and
(postal_code like '482%'
or
postal_Code like '481%');