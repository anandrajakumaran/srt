alter table SALES_BOOKING add constraint FK_SALES_BOOKING_ON_SHOW foreign key (SHOW_ID) references SALES_SHOW(ID);
create index IDX_SALES_BOOKING_ON_SHOW on SALES_BOOKING (SHOW_ID);
