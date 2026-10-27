@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales by region'
define view entity ZC_SALES_REGION
  as select from ZI_SALES
{
  key Region,
  key Currency,
      sum( Quantity ) as Quantity,
      @Semantics.amount.currencyCode: 'Currency'
      sum( NetAmount ) as NetAmount
}
group by Region, Currency
