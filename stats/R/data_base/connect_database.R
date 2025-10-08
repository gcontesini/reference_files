if (!require( RPostgreSQL ) ) install.packages( "RPostgreSQL" )
if (!require( DBI ) ) install.packages( "DBI" )

library( DBI )
library( RPostgreSQL )

retrieve_employee_table = function() {
    
    db_connection = DBI::dbConnect(
        RPostgreSQL::PostgreSQL(),
        dbname = "testdb",
        # host= "fluffy",
        # port = 5432,
        # user = "postgres",
        # password = "postgres"
    )

    employees_table = dbGetQuery(
        db_connection,
        "
        SELECT * 
        FROM employees;
        "
    )

    print( employees_table )
}

retrieve_employee_table()