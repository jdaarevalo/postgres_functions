-- Set params
set session my.number_of_sales_store_1 = '10000';
set session my.number_of_sales_store_2 = '20000';
set session my.number_of_sales_store_3 = '30000';
set session my.start_date = '2019-01-01 00:00:00';
set session my.end_date = '2020-02-01 00:00:00';

-- load the pgcrypto extension to gen_random_uuid ()
CREATE EXTENSION pgcrypto;

-- Filling of sales_store_1
INSERT INTO sales_store_1
select gen_random_uuid ()
        , concat('Sales store 1 ', id) 
	, round(CAST(float8 (random() * 10000) as numeric), 3)
	, TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS') +
		random()* (TO_TIMESTAMP(end_date, 'YYYY-MM-DD HH24:MI:SS') 
							- TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS'))
FROM GENERATE_SERIES(1, current_setting('my.number_of_sales_store_1')::int) as id
	, current_setting('my.start_date') as start_date
	, current_setting('my.end_date') as end_date;

-- Filling of sales_store_2
INSERT INTO sales_store_2
select gen_random_uuid ()
        , concat('Sales store 2 ', id) 
	, round(CAST(float8 (random() * 10000) as numeric), 3)
	, TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS') +
		random()* (TO_TIMESTAMP(end_date, 'YYYY-MM-DD HH24:MI:SS') 
							- TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS'))
FROM GENERATE_SERIES(1, current_setting('my.number_of_sales_store_2')::int) as id
	, current_setting('my.start_date') as start_date
	, current_setting('my.end_date') as end_date;


-- Filling of sales_store_3
INSERT INTO sales_store_3
select gen_random_uuid ()
        , concat('Sales store 3 ', id) 
	, round(CAST(float8 (random() * 10000) as numeric), 3)
	, TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS') +
		random()* (TO_TIMESTAMP(end_date, 'YYYY-MM-DD HH24:MI:SS') 
							- TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS'))
FROM GENERATE_SERIES(1, current_setting('my.number_of_sales_store_3')::int) as id
	, current_setting('my.start_date') as start_date
	, current_setting('my.end_date') as end_date;

