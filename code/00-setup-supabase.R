library(DBI)
library(RPostgres)

# extract environment variables
db_name <- Sys.getenv("SUPAB_NAME")
db_host <- Sys.getenv("SUPAB_HOST")
db_port <- Sys.getenv("SUPAB_PORT")
db_user <- Sys.getenv("SUPAB_USER")
db_password <- Sys.getenv("SUPAB_PASSWORD")

# create connection
con <- dbConnect(drv = RPostgres::Postgres(),
                 host = db_host,
                 port = db_port,
                 dbname = db_name,
                 user = db_user,
                 password = db_password)

dbListTables(con)

# replace table_name with the name of the table you need to use
df <- dbReadTable(con, "table_name")

readr::write_rds(df, here::here("data", "raw", "data.rds"))
