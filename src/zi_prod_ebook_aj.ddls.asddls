@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product details Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PROD_EBOOK_AJ
  as select from zaj_prod_ebook
  //composition of target_data_source_name as _association_name
{
  key product_uuid    as ProductUuid,
      product_id      as ProductId,
      name            as Name,
      category        as Category,
      creation_date   as CreationDate,
      created_by      as CreatedBy,
      crreated_at     as CrreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
      //    _association_name // Make association public
}
