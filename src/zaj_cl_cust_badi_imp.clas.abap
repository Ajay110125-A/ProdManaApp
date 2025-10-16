CLASS zaj_cl_cust_badi_imp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES zaj_if_custom_badi .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaj_cl_cust_badi_imp IMPLEMENTATION.


  METHOD zaj_if_custom_badi~modify_header.

    c_string = 'First Implemenation'.

  ENDMETHOD.
ENDCLASS.
