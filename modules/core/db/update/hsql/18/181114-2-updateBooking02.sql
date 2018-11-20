alter table SALES_BOOKING alter column DATE_ rename to DATE___U97791 ^
alter table SALES_BOOKING alter column DATE___U97791 set null ;
alter table SALES_BOOKING add column BOOKING_DATE date ^
update SALES_BOOKING set BOOKING_DATE = current_date where BOOKING_DATE is null ;
alter table SALES_BOOKING alter column BOOKING_DATE set not null ;
alter table SALES_BOOKING add column TICKET_CATEGORY varchar(50) ;
alter table SALES_BOOKING add column BOOKING_TYPE varchar(50) ;
alter table SALES_BOOKING add column QUANTITY integer ;
