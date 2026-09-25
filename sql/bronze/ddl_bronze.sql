
USE OmniRetaildataWarehouse;
GO

CREATE TABLE bronze.crm_customers
(
    customer_id       VARCHAR(50),
    first_name        VARCHAR(100),
    last_name         VARCHAR(100),
    gender            VARCHAR(50),
    email             VARCHAR(200),
    marital_status    VARCHAR(50),
    created_date      VARCHAR(50),
    modified_at       VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO

CREATE TABLE bronze.crm_customer_address
(
    address_id        VARCHAR(50),
    customer_id       VARCHAR(50),
    city              VARCHAR(100),
    state             VARCHAR(100),
    country           VARCHAR(100),
    postal_code       VARCHAR(50),
    valid_from        VARCHAR(50),
    valid_to          VARCHAR(50),
    is_current        VARCHAR(20),
    modified_at       VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO

CREATE TABLE bronze.erp_categories
(
    category_id       VARCHAR(50),
    category_name     VARCHAR(100),
    department        VARCHAR(100),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO

CREATE TABLE bronze.erp_products
(
    product_id        VARCHAR(50),
    product_code      VARCHAR(100),
    product_name      VARCHAR(200),
    category_id       VARCHAR(50),
    subcategory       VARCHAR(100),
    cost              VARCHAR(50),
    list_price        VARCHAR(50),
    start_date        VARCHAR(50),
    end_date          VARCHAR(50),
    modified_at       VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO

CREATE TABLE bronze.erp_stores
(
    store_id          VARCHAR(50),
    store_name        VARCHAR(200),
    city              VARCHAR(100),
    state             VARCHAR(100),
    country           VARCHAR(100),
    store_type        VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO

CREATE TABLE bronze.sales_orders
(
    order_id          VARCHAR(50),
    customer_id       VARCHAR(50),
    store_id          VARCHAR(50),
    order_date        VARCHAR(50),
    status            VARCHAR(50),
    channel           VARCHAR(50),
    modified_at       VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO


CREATE TABLE bronze.sales_order_items
(
    order_id          VARCHAR(50),
    line_number       VARCHAR(50),
    product_id        VARCHAR(50),
    quantity          VARCHAR(50),
    unit_price        VARCHAR(50),
    discount_amount   VARCHAR(50),
    _source_file      VARCHAR(255),
    _load_timestamp   DATETIME2 DEFAULT SYSDATETIME()
);
GO
