@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product details Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_PROD_EBOOK_AJ
  provider contract transactional_query
  as projection on ZI_PROD_EBOOK_AJ
{
  key ProductUuid,
      ProductId,
      Name,
      Category,
      CreationDate
}
