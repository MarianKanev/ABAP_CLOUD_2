CLASS zcl_mmk_01_global DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mmk_01_global IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: connection1 TYPE REF TO lcl_connection.
    DATA: connection2 TYPE REF TO lcl_connection.

    connection1 = NEW #( ).
    connection1->carrier_id = 'LH'.
    connection1->connection_id = '0400'.

    connection2 = connection1. " The carrier_id and connection_id have same values as in connection1




  ENDMETHOD.

ENDCLASS.
