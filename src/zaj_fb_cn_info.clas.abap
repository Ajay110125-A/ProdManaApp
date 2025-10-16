CLASS zaj_fb_cn_info DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES zaj_if_custom_badi .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaj_fb_cn_info IMPLEMENTATION.


  METHOD zaj_if_custom_badi~modify_header.

    c_string = 'Not implemented' .

  ENDMETHOD.
ENDCLASS.
