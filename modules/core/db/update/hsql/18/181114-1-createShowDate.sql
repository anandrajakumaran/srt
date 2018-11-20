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
    SHOW_DATE_TIME timestamp not null,
    --
    primary key (ID)
);
