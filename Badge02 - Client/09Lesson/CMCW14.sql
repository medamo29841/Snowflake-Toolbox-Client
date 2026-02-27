-- set your worksheet drop lists to the location of your GRADER function
--DO NOT EDIT ANYTHING BELOW THIS LINE

use Database UTIL_DB;
use schema public;
use role sysadmin;

--DO NOT MAKE ANY CHANGES BELOW THIS LINE

--RUN THIS DORA CHECK IN YOUR ACME ACCOUNT

select grader(step, (actual = expected), actual, expected, description) as graded_results from (
SELECT 
  'CMCW14' as step
 ,( select count(*) 
   from STOCK.UNSOLD.LOTSTOCK
   where engine like '%.5 L%'
   or plant_name like '%z, Sty%'
   or desc2 like '%xDr%') as actual
 , 145 as expected
 ,'Intentionally cryptic test' as description
); 