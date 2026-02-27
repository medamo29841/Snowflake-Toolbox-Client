select $1, $2, $3
from @stock.unsold.aws_s3_bucket/Lotties_LotStock_Data.csv;

create or replace file format util_db.public.CSV_COMMA_LF_HEADER 
  type = 'CSV' --use CSV for any flat file
  compression = 'AUTO' 
  field_delimiter = ',' --pipe or vertical bar
  record_delimiter = '\n' --carriage return
  skip_header = 1  --1 header row
  field_optionally_enclosed_by = '\042'  --double quotes
  trim_space = FALSE;



  select $1 as VIN
, $2 as Exterior, $3 as Interior
from @stock.unsold.aws_s3_bucket/Lotties_LotStock_Data.csv
(file_format => util_db.public.csv_comma_lf_header);