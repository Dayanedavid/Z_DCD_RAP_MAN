@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Comsuption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_DCD_ORDER
provider contract transactional_query
as projection on ZI_DCD_ORDER
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_dcd_order_VH',  element: 'Orderid' }, 
      useForValidation: true }]
  key Orderid,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_dcd_customer_VH',  element: 'CustomerId' }, 
      useForValidation: true }]
      @ObjectModel.text.element: [ 'CustomerName' ]
      Customer,
      CustomerName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_dcd_vendor_VH',  element: 'VendorId' }, 
      useForValidation: true }]
      @ObjectModel.text.element: [ 'VendorName' ]
      Vendor,
      VendorName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_dcd_company_VH',  element: 'CompanyId' }, 
      useForValidation: true }]
      @ObjectModel.text.element: [ 'CompanyName' ]
      Company,
      CompanyName,
      Usnam,
      /* Associations */
      _Itens: redirected to composition child ZC_DCD_ORDER_IT
}
