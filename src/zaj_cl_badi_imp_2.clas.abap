CLASS zaj_cl_badi_imp_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES zaj_if_custom_badi .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaj_cl_badi_imp_2 IMPLEMENTATION.


  METHOD zaj_if_custom_badi~modify_header.

    c_string = |Second Implemetation Data|.

  ENDMETHOD.
ENDCLASS.
