use warehouse dev_wh; --< ORGINAL WAREHOUSE IS 'COMPUTE_WH'

begin
// SET UP DEV
create database if not exists PROD__FLIGHT_DATA;
create database if not exists DEV__FLIGHT_DATA;
use database DEV__FLIGHT_DATA;
create schema if not exists BRONZE;
create schema if not exists SILVER;
create schema if not exists GOLD;

//SET UP PROD

use database PROD__FLIGHT_DATA;
create schema if not exists BRONZE;
create schema if not exists SILVER;
create schema if not exists GOLD;

create warehouse if not exists prod_wh 
    warehouse_size = 'xsmall' 
    auto_suspend = 60 
    auto_resume = true;

end;



