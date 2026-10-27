@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales (basic view)'
define view entity ZI_SALES
  as select from zsales
{
  key order_id as OrderId,
      region   as Region,
      category as Category,
      product  as Product,
      order_date as OrderDate,
      substring( cast( order_date as abap.char( 8 ) ), 1, 6 ) as YearMonth,
      quantity as Quantity,
      @Semantics.amount.currencyCode: 'Currency'
      net_amount as NetAmount,
      currency as Currency
}
