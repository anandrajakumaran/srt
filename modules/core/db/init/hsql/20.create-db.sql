-- begin SALES_ORDER
alter table SALES_ORDER add constraint FK_SALES_ORDER_CUSTOMER foreign key (CUSTOMER_ID) references SALES_CUSTOMER(ID)^
create index IDX_SALES_ORDER_CUSTOMER on SALES_ORDER (CUSTOMER_ID)^
-- end SALES_ORDER
-- begin SALES_ORDER_LINE
alter table SALES_ORDER_LINE add constraint FK_SALES_ORDER_LINE_ORDER foreign key (ORDER_ID) references SALES_ORDER(ID)^
alter table SALES_ORDER_LINE add constraint FK_SALES_ORDER_LINE_PRODUCT foreign key (PRODUCT_ID) references SALES_PRODUCT(ID)^
create index IDX_SALES_ORDER_LINE_ORDER on SALES_ORDER_LINE (ORDER_ID)^
create index IDX_SALES_ORDER_LINE_PRODUCT on SALES_ORDER_LINE (PRODUCT_ID)^
-- end SALES_ORDER_LINE
-- begin SALES_SHOW_DATE
alter table SALES_SHOW_DATE add constraint FK_SALES_SHOW_DATE_ON_SHOW foreign key (SHOW_ID) references SALES_SHOW(ID)^
create index IDX_SALES_SHOW_DATE_ON_SHOW on SALES_SHOW_DATE (SHOW_ID)^
-- end SALES_SHOW_DATE

-- begin SALES_BOOKING
alter table SALES_BOOKING add constraint FK_SALES_BOOKING_ON_CUSTOMER foreign key (CUSTOMER_ID) references SALES_CUSTOMER(ID)^
alter table SALES_BOOKING add constraint FK_SALES_BOOKING_ON_SHOW_DATE_TIME foreign key (SHOW_DATE_TIME_ID) references SALES_SHOW_DATE(ID)^
create index IDX_SALES_BOOKING_ON_CUSTOMER on SALES_BOOKING (CUSTOMER_ID)^
create index IDX_SALES_BOOKING_ON_SHOW_DATE_TIME on SALES_BOOKING (SHOW_DATE_TIME_ID)^
-- end SALES_BOOKING
