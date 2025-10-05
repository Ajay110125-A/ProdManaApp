@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumtion ZC_VITRUAL_ELEMENT'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_VITRUAL_ELEMENT
  provider contract transactional_query
  as projection on ZI_VITRUAL_ELEMENT
{
  key     TravelId,
          AgencyId,
          CustomerId,
          BeginDate,
          EndDate,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          BookingFee,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          TotalPrice,
          //      balance,
          CurrencyCode,
          Description,
          OverallStatus,

          @EndUserText.label: 'Balance Amount'
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELE_CAL'
  virtual Balance : abap.int4
}
