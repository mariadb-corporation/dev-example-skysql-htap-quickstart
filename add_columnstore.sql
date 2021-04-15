/* 
    The following commands will replace the previously replicated 
    flights InnoDB table with a ColumnStore table.
*/

/* DROP the InnoDB table */
DROP TABLE IF EXISTS travel_history.flights;

/* Create the ColumnStore table */
CREATE TABLE travel_history.flights
  ENGINE=COLUMNSTORE
  SELECT * FROM travel.flights;