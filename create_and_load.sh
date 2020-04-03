#!/bin/bash

host=$1
port=$2
user=$3
pass=$4

# use the arguments to connect to MariaDB SkySQl
mariaDB="mariadb --host ${host} --port ${port} --user ${user} -p${pass} --ssl-ca skysql_chain.pem"

echo "creating schema..."

# create travel database and airports, airlines, flights tables
${mariadb} < schema/idb_schema.sql

# create travel_history database and flights table
${mariadb} < schema/cs_schema.sql

echo "schema created"
echo "loading data..."

# Load airlines into travel.airlines
${mariadb} -e "LOAD DATA LOCAL INFILE 'data/airlines.csv' INTO TABLE airlines FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n'" travel

echo '- airlines.csv loaded into travel.airlines'

# Load airports into travel.airlines
${mariadb} -e "LOAD DATA LOCAL INFILE 'data/airports.csv' INTO TABLE airports FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n'" travel
echo '- airports.csv loaded into travel.airports'

# Load flights data into travel_history.flights
${mariadb} -e "LOAD DATA LOCAL INFILE 'data/flights.csv' INTO TABLE flights FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n'" travel_history
echo '- flights.csv loaded into travel_history.flights'