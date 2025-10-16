CLASS zaj_practice_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaj_practice_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(l_text) = 'Expert'.
    DATA(l_string) = `Expert`.

    out->write( |Text Literial Defaul Value : { l_text }| ).
    out->write( |String Literial Defaul Value : { l_string }| ).

    l_text = 'Expert is involved'.
    l_string = 'Expert is involved'.

    out->write( |Text Literial updated Value : { l_text }| ).
    out->write( |String Literial updated Value : { l_string }| ).

    l_string = 'Expert is involved and changed'.

    l_text = 'HEllo      '.
    l_string = `Hello     `.


  ENDMETHOD.
ENDCLASS.
