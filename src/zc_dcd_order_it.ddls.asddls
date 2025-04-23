@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Comsuption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZC_DCD_ORDER_IT 
as projection on ZI_DCD_ORDER_IT
{
   key OrderId,
  key Item,
      @ObjectModel.text.element: [ 'Description' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_dcd_product_VH', element: 'ProductId' }, 
      useForValidation: true }]
      Product,
      Description,
      Value,
      Currency,
      Quantity,
      SalesPrice,
      UnityMeasure,
      /* Associations */
      _Order: redirected to parent ZC_DCD_ORDER,
      _Product
}
