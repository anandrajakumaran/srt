alter table SALES_SHOW_DATE add column TOTAL_TICKETS integer ^
update SALES_SHOW_DATE set TOTAL_TICKETS = 0 where TOTAL_TICKETS is null ;
alter table SALES_SHOW_DATE alter column TOTAL_TICKETS set not null ;
