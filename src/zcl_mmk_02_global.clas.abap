CLASS zcl_mmk_02_global DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mmk_02_global IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: connection TYPE REF TO lcl_connection.
    DATA: connections TYPE TABLE OF REF TO lcl_connection.

    connection = NEW #( ).
    APPEND connection TO connections.

    CLEAR connection.

    connection = NEW #(  ).
    APPEND connection TO connections.

  ENDMETHOD.

ENDCLASS.
