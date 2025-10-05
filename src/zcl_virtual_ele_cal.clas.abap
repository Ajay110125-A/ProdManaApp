CLASS zcl_virtual_ele_cal DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_virtual_ele_cal IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA : lt_calculate_data TYPE TABLE OF ZC_VITRUAL_ELEMENT WITH DEFAULT KEY.

    IF it_original_data IS NOT INITIAL.

        lt_calculate_data = CORRESPONDING #( it_original_data ).

        LOOP AT lt_calculate_data ASSIGNING FIELD-SYMBOL(<fs_cal_data>).

            <fs_cal_data>-balance = <fs_cal_data>-TotalPrice - <fs_cal_data>-BookingFee.

        ENDLOOP.

        ct_calculated_data = CORRESPONDING #( lt_calculate_data ).

    ENDIF.

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

    et_requested_orig_elements = VALUE #(
                                            BASE et_requested_orig_elements
                                            ( CONV #( 'TOTALPRICE' ) )
                                            ( CONV #( 'BOOKINGFEE' ) )
                                        ).

  ENDMETHOD.
ENDCLASS.
