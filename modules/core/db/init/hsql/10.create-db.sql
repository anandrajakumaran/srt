-- begin SALES_CUSTOMER
create table SALES_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    EMAIL varchar(100),
    COUNTRY varchar(2),
    PHONE varchar(20),
    --
    primary key (ID)
)^
-- end SALES_CUSTOMER
-- begin SALES_PRODUCT
create table SALES_PRODUCT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(50) not null,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end SALES_PRODUCT
-- begin SALES_ORDER
create table SALES_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DATE_ date not null,
    AMOUNT decimal(19, 2),
    CUSTOMER_ID varchar(36),
    --
    primary key (ID)
)^
-- end SALES_ORDER
-- begin SALES_ORDER_LINE
create table SALES_ORDER_LINE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_ID varchar(36),
    PRODUCT_ID varchar(36) not null,
    QUANTITY decimal(19, 3) not null,
    --
    primary key (ID)
)^
-- end SALES_ORDER_LINE
-- begin SALES_SHOW
create table SALES_SHOW (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    TYPE_ varchar(100),
    START_DATE date,
    END_DATE date,
    --
    primary key (ID)
)^
-- end SALES_SHOW
-- begin SALES_SHOW_DATE
create table SALES_SHOW_DATE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SHOW_ID varchar(36) not null,
    TOTAL_TICKETS integer not null,
    SHOW_DATE_TIME timestamp not null,
    --
    primary key (ID)
)^
-- end SALES_SHOW_DATE

-- begin SALES_BOOKING
create table SALES_BOOKING (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    BOOKING_DATE date not null,
    CUSTOMER_ID varchar(36),
    SHOW_DATE_TIME_ID varchar(36),
    TICKET_CATEGORY varchar(50),
    BOOKING_TYPE varchar(50),
    QUANTITY integer,
    AMOUNT decimal(19, 2),
    --
    primary key (ID)
)^
-- end SALES_BOOKING
