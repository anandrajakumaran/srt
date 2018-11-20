alter table SALES_BOOKING alter column SHOW_ID rename to SHOW_ID__U23501 ^
drop index IDX_SALES_BOOKING_ON_SHOW ;
alter table SALES_BOOKING drop constraint FK_SALES_BOOKING_ON_SHOW ;
