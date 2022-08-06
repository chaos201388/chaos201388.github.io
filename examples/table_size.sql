-- https://stackoverflow.com/questions/9620198/how-to-get-the-sizes-of-the-tables-of-a-mysql-database

select
    table_schema,
    table_name,
    round(((data_length + index_length) / 1024 / 1024), 2) as table_size
from
    information_schema.tables
order by
    (data_length + index_length) desc;
