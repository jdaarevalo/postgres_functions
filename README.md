## Working with PostgreSQL Functions

This project create 3 tables and fill these with demo data 

## DB Variables
Set the variables in `sql/fill_tables.sql`
| Parameter | Description |
| ------ | ------ |
| number_of_sales_store_1 | Number of rows to create in the table sales_store_1 |
| number_of_sales_store_2 | Number of rows to create in the table sales_store_2 |
| number_of_sales_store_3 | Number of rows to create in the table sales_store_3 |
| start_date | Date of the first sale |
| end_date | Date of the last sale |

## Params
If want change this params in `docker-compose.yaml`
| Parameter | Description |
| ------ | ------ |
| POSTGRES_USER | The Postgres user to connect **postgres** |
| POSTGRES_PASSWORD | The Postgres password to connect **postgres** |
| POSTGRES_DB | The Postgres password to connect **postgres** |
| port | The port mapped by Postgres is **5432** in your container. In this example, use the port **5438** on the host machine |

## Run
```sh
$ docker-compose up
```

## References
Read the explanation here to create and fill the tables [Creating and filling a Postgres DB with Docker compose](https://levelup.gitconnected.com/creating-and-filling-a-postgres-db-with-docker-compose-e1607f6f882f)
