@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Virtual Element example'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_VITRUAL_ELEMENT
  as select from /dmo/travel_m
{
  key travel_id              as TravelId,
      agency_id              as AgencyId,
      customer_id            as CustomerId,
      begin_date             as BeginDate,
      end_date               as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee            as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price            as TotalPrice,
//      @ObjectModel.virtualElement: true
//      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELE_CAL'
//      @EndUserText.label: 'Balance Amount'
//          @ObjectModel.virtualElement:true
//      cast( 0 as abap.int4 ) as balance,
      currency_code          as CurrencyCode,
      description            as Description,
      overall_status         as OverallStatus
}
