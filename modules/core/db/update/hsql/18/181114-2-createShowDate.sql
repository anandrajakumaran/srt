alter table SALES_SHOW_DATE add constraint FK_SALES_SHOW_DATE_ON_SHOW foreign key (SHOW_ID) references SALES_SHOW(ID);
create index IDX_SALES_SHOW_DATE_ON_SHOW on SALES_SHOW_DATE (SHOW_ID);
