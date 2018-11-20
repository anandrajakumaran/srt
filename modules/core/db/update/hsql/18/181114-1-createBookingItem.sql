create table SALES_BOOKING_ITEM (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    BOOKING_ID varchar(36) not null,
    SHOW_DATE_ID varchar(36) not null,
    TYPE_ varchar(20) not null,
    CATEGORY varchar(50),
    QUANTITY decimal(19, 3) not null,
    --
    primary key (ID)
);
