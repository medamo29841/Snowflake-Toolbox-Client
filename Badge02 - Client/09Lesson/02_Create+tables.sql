use database stock;
use schema unsold;

create or replace table stock.unsold.lotstock
(
  vin varchar(25)
, exterior varchar(50)	
, interior varchar(50)
, manuf_name varchar(25)
, vehicle_type varchar(25)
, make_name varchar(25)
, plant_name varchar(25)
, model_year varchar(25)
, model_name varchar(25)
, desc1 varchar(25)
, desc2 varchar(25)
, desc3 varchar(25)
, desc4 varchar(25)
, desc5 varchar(25)
, engine varchar(25)
, drive_type varchar(25)
, transmission varchar(25)
, mpg varchar(25)
);