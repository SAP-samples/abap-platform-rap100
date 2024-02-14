@EndUserText.label: 'Abtract Entity for Travel'
define abstract entity ZRAP100_A_TRAVEL_SOL
{
  travel_id      : /dmo/travel_id;
  agency_id      : /dmo/agency_id;
  customer_id    : /dmo/customer_id;
  overall_status : /dmo/overall_status;
  description    : /dmo/description;
  @Semantics.amount.currencyCode: 'currency_code'
  total_price    : /dmo/total_price;
  currency_code  : /dmo/currency_code;
  begin_date     : /dmo/begin_date;
  end_date       : /dmo/end_date;
  email_address  : /dmo/email_address;
}
