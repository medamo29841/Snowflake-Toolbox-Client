-- set your worksheet drop lists to the location of your GRADER function
--DO NOT EDIT ANYTHING BELOW THIS LINE

use Database UTIL_DB;
use schema public;
use role sysadmin;

-- set the worksheet drop lists to match the location of your GRADER function
--DO NOT MAKE ANY CHANGES BELOW THIS LINE

--RUN THIS DORA CHECK IN YOUR ACME ACCOUNT

select grader(step, (actual = expected), actual, expected, description) as graded_results from (
SELECT 
  'CMCW11' as step
 ,( select count(*) 
   from MARKETING.MAILERS.DETROIT_ZIPS) as actual
 , 9 as expected
 ,'Detroit Zips' as description
); 