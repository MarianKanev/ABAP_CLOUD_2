CLASS zcl_mmk_04_global DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mmk_04_global IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


    DATA connection  TYPE REF TO lcl_connection.
    DATA connections  TYPE TABLE OF REF TO lcl_connection.

* Create Instance
**********************************************************************

    connection = NEW #(  ).

    connection->set_attributes(
      EXPORTING
        i_carrier_id    = 'LH'
        i_connection_id = '0400'
    ).

    APPEND connection TO connections.

    connection->conn_counter = 23.

* Calling Functional Method
**********************************************************************
    " in a value assignment (with inline declaration for result)
    DATA(result) = connection->get_output( ).

    " in logical expression
    IF connection->get_output(  ) IS NOT INITIAL.

      " as operand in a statement
      LOOP AT connection->get_output(  ) INTO DATA(line).

        out->write( line ).

      ENDLOOP.

      "  to supply input parameter of another method
      out->write( data = connection->get_output( )
                  name = `  ` ).

    ENDIF.


  ENDMETHOD.

ENDCLASS.
