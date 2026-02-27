Create Database MARKETING;

Create Schema MAILERS;

Create View DETROIT_ZIPS
(
postal_code
)
as
Select distinct postal_code
from weathersource.standard_tile.history_day
where 
country = 'US'
and
(postal_code like '482%'
or
postal_Code like '481%');

Select Count(*) rwCnt
FROM weathersource.standard_tile.history_day; --736117

Select Count(*) rwCnt
FROM weathersource.standard_tile.history_day hd
join marketing.mailers.detroit_zips dz on dz.postal_code = hd.postal_code; --6579
;

Select 
min(date_valid_std) as min_date_valid_std,
max(date_valid_std) as max_date_valid_std,
FROM weathersource.standard_tile.history_day hd
join marketing.mailers.detroit_zips dz on dz.postal_code = hd.postal_code;

Select 
min(date_valid_std) as min_date_valid_std,
max(date_valid_std) as max_date_valid_std,
FROM weathersource.standard_tile.FORECAST_DAY fd
join marketing.mailers.detroit_zips dz on dz.postal_code = fd.postal_code;

Select
fd.DATE_VALID_STD,
avg(fd.AVG_CLOUD_COVER_TOT_PCT) as AVG_CLOUD_COVER_TOT_PCT
FROM weathersource.standard_tile.FORECAST_DAY fd
join marketing.mailers.detroit_zips dz on dz.postal_code = fd.postal_code
Where DATE_VALID_STD <= current_date()+14
Group by 1
order by AVG_CLOUD_COVER_TOT_PCT;

