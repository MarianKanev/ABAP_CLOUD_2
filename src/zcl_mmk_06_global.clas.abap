CLASS zcl_mmk_06_global DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mmk_06_global IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

    DATA connection1 TYPE REF TO lcl_connection.
    DATA connection2 TYPE REF TO lcl_connection.

    DATA connections TYPE TABLE OF REF TO lcl_connection.

    connection1 = NEW #(  ).
    connection1->carrier_id = 'LH'.
    connection1->connection_id = '0400'.

    connection2 = NEW #(  ).
    connection2->carrier_id = 'AA'.
    connection2->connection_id = '0017'.

    APPEND connection1 TO connections.
    APPEND connection2 TO connections.

    lcl_connection=>conn_counter = 123.

    connection2 = connection1.

  ENDMETHOD.


ENDCLASS.
