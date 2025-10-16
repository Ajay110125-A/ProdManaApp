CLASS zaj_badi_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaj_badi_provider IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA : lv_string  TYPE string,
           lr_badi    TYPE REF TO zaj_custom_badi,
           l_agencyid TYPE /dmo/agency_id,
           li_r_agencyid TYPE RANGE OF /dmo/agency_id.

*    l_agencyid = '070017'.
    l_agencyid = '070020'.

    IF l_agencyid = '070017'.
        li_r_agencyid = VALUE #( ( sign = 'I' option = 'EQ' low = '070017' ) ).
    ELSE.
        li_r_agencyid = VALUE #( ( sign = 'E' option = 'EQ' low = '070017' ) ).
    ENDIF.

    SELECT
     FROM /dmo/travel
     FIELDS *
     WHERE agency_id IN @li_r_agencyid
     INTO TABLE @DATA(lt_travel) UP TO 20 ROWS.
    IF sy-subrc EQ 0.

      lv_string = |This table data|.
***  IF BAdi is not multiple use badi, then at least one implementation should be there or else goes to runtime error, This can be stopped by using try..catch block or using fallback class
***  IF Fallback class is implemented, try--catch is not required
*      TRY.

      "Here I am BADI Provider
      GET BADI lr_badi FILTERS agency = l_agencyid .

      CALL BADI lr_badi->modify_header
        CHANGING
          c_string = lv_string.
*        CATCH cx_badi_not_implemented.
*
*      ENDTRY.

      out->write( lv_string ).

      out->write( lt_travel ).

    ENDIF.

  ENDMETHOD.
ENDCLASS.
