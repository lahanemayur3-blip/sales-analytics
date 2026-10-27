CLASS zcl_sales_load DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_sales_load IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt TYPE STANDARD TABLE OF zsales WITH DEFAULT KEY.
    DELETE FROM zsales.
    lt = VALUE #(
      ( order_id = 'S001' region = 'North' category = 'Computers'   product = 'Laptop'   order_date = '20260110' quantity = 5  net_amount = '6000.00' currency = 'EUR' )
      ( order_id = 'S002' region = 'North' category = 'Accessories' product = 'Mouse'    order_date = '20260125' quantity = 40 net_amount = '1020.00' currency = 'EUR' )
      ( order_id = 'S003' region = 'South' category = 'Computers'   product = 'Laptop'   order_date = '20260210' quantity = 3  net_amount = '3600.00' currency = 'EUR' )
      ( order_id = 'S004' region = 'South' category = 'Displays'    product = 'Monitor'  order_date = '20260218' quantity = 8  net_amount = '2480.00' currency = 'EUR' )
      ( order_id = 'S005' region = 'East'  category = 'Accessories' product = 'Keyboard' order_date = '20260305' quantity = 30 net_amount = '2699.70' currency = 'EUR' )
      ( order_id = 'S006' region = 'East'  category = 'Computers'   product = 'Laptop'   order_date = '20260316' quantity = 7  net_amount = '8400.00' currency = 'EUR' )
      ( order_id = 'S007' region = 'West'  category = 'Displays'    product = 'Monitor'  order_date = '20260402' quantity = 12 net_amount = '3720.00' currency = 'EUR' )
      ( order_id = 'S008' region = 'West'  category = 'Accessories' product = 'USB Dock' order_date = '20260419' quantity = 20 net_amount = '2800.00' currency = 'EUR' )
      ( order_id = 'S009' region = 'North' category = 'Displays'    product = 'Monitor'  order_date = '20260508' quantity = 6  net_amount = '1860.00' currency = 'EUR' )
      ( order_id = 'S010' region = 'South' category = 'Accessories' product = 'Mouse'    order_date = '20260521' quantity = 55 net_amount = '1402.50' currency = 'EUR' )
      ( order_id = 'S011' region = 'East'  category = 'Displays'    product = 'Monitor'  order_date = '20260610' quantity = 9  net_amount = '2790.00' currency = 'EUR' )
      ( order_id = 'S012' region = 'West'  category = 'Computers'   product = 'Laptop'   order_date = '20260622' quantity = 4  net_amount = '4800.00' currency = 'EUR' ) ).
    INSERT zsales FROM TABLE @lt.
    COMMIT WORK.
    out->write( |{ sy-dbcnt } rows inserted| ).
  ENDMETHOD.
ENDCLASS.

