-- set your worksheet drop lists to the location of your GRADER function
--DO NOT EDIT ANYTHING BELOW THIS LINE

use Database UTIL_DB;
use schema public;
use role sysadmin;

--THIS DORA CHECK MUST BE RUN IN THE ACME ACCOUNT!!!!!
select grader(step, (actual = expected), actual, expected, description) as graded_results from (
 SELECT 'CMCW10' as step
 ,( select count(*)
    from snowflake.account_usage.databases
    where (database_name in ('WEATHERSOURCE','INTERNATIONAL_CURRENCIES')
           and type = 'IMPORTED DATABASE'
           and deleted is null)
    or (database_name = 'MARKETING'
          and type = 'STANDARD'
          and deleted is null)
   ) as actual
 , 3 as expected
 ,'ACME Account Set up nicely' as description
); 