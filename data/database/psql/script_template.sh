#!/bin/bash

psql -d testdb -t --csv -f between.sql

# -d - database
# -t - rows only
# -f -execute query from sql file
# --csv - formatted as .csv file