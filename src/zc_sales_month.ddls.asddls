@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales by month'
define view entity ZC_SALES_MONTH
  as select from ZI_SALES
{
  key YearMonth,
  key Currency,
      sum( Quantity ) as Quantity,
      @Semantics.amount.currencyCode: 'Currency'
      sum( NetAmount ) as NetAmount
}
group by YearMonth, Currency
