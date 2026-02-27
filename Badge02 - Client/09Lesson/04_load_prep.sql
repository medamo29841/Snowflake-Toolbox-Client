-- This file format will allow the 3 column file to be loaded into an 18 column table
-- By parsing the header, Snowflake can infer the column names
CREATE FILE FORMAT util_db.public.CSV_COL_COUNT_DIFF 
type = 'CSV' 
field_delimiter = ',' 
record_delimiter = '\n' 
field_optionally_enclosed_by = '"'
trim_space = TRUE
error_on_column_count_mismatch = FALSE
parse_header = TRUE;STOCK.UNSOLD.AWS_S3_BUCKET


copy into stock.unsold.lotstock
from @stock.unsold.aws_s3_bucket/Lotties_LotStock_Data.csv
file_format = (format_name = util_db.public.csv_col_count_diff)
match_by_column_name='CASE_INSENSITIVE';

Select * from stock.unsold.lotstock;

