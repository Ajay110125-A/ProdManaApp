INTERFACE zaj_if_custom_badi
  PUBLIC .


  INTERFACES if_badi_interface .
  METHODS : modify_header CHANGING c_string TYPE string.
ENDINTERFACE.
