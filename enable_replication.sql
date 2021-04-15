/* Set up the replication from the (InnoDB) flights table */
SELECT SET_HTAP_REPLICATION('travel.flights','travel','travel_history');
