-- Test requirement is 1) ID column should be unique & not null 2) country should be not null

/* lets create schema.yml file in test_emp model folder & provide the Model Name, Column Name and data_tests
like what tests you want to put there. Copy Schema file contains & format from existing schema.yml file from another folder. 
From one model we are mentioning multiple columns for test.

added dummy data in snowflake, where ID is duplicate & country is null and ran the dbt tests, and get the error for these tests.
*/

