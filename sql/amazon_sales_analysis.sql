
-- ============================================================
-- PROJECT: AMAZON SALES ANALYTICS
-- DATABASE: amazon_sales
-- TABLE: amazon_sales_data
-- DATASET: Amazon India Sale Report
-- ============================================================


-- 1: DATABASE CREATION

USE amazon_sales;

-- 2: TABLE CREATION

CREATE TABLE IF NOT EXISTS amazon_sales_data (

    order_id VARCHAR(30),
    date DATE,
    status VARCHAR(100),
    fulfilment VARCHAR(50),
    sales_channel VARCHAR(100),
    ship_service_level VARCHAR(50),
    style VARCHAR(50),
    sku VARCHAR(100),
    category VARCHAR(100),
    size VARCHAR(20),
    asin VARCHAR(30),
    courier_status VARCHAR(50),
    qty INT,
    currency VARCHAR(10),
    amount DECIMAL(12,2),
    ship_city VARCHAR(100),
    ship_state VARCHAR(100),
    ship_postal_code VARCHAR(20),
    ship_country VARCHAR(10),
    promotion_ids TEXT,
    b2b VARCHAR(10),
    has_promotion VARCHAR(10),
    order_month VARCHAR(7)

);


-- 3: TABLE STRUCTURE

SHOW TABLES;

DESCRIBE amazon_sales_data;


-- SECTION 4: DATA VALIDATION

-- Total records
SELECT COUNT(*) AS total_records
FROM amazon_sales_data;

-- Unique orders
SELECT COUNT(DISTINCT order_id) AS unique_orders
FROM amazon_sales_data;

-- Date range
SELECT
    MIN(date) AS first_order_date,
    MAX(date) AS last_order_date
FROM amazon_sales_data;

-- Missing values
SELECT
    SUM(order_id IS NULL) AS missing_order_id,
    SUM(date IS NULL) AS missing_date,
    SUM(status IS NULL) AS missing_status,
    SUM(category IS NULL) AS missing_category,
    SUM(amount IS NULL) AS missing_amount,
    SUM(courier_status IS NULL) AS missing_courier_status,
    SUM(ship_state IS NULL) AS missing_ship_state
FROM amazon_sales_data;


-- 5: OVERALL BUSINESS PERFORMANCE

SELECT
    COUNT(*) AS total_order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS total_recorded_amount,
    ROUND(AVG(amount), 2) AS average_line_amount
FROM amazon_sales_data;


-- 6: CATEGORY-WISE ANALYSIS

SELECT
    category,
    COUNT(*) AS order_items,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY category
ORDER BY recorded_amount DESC;


-- 7: MONTHLY SALES ANALYSIS

SELECT
    order_month,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY order_month
ORDER BY order_month;


-- 8: STATE-WISE ANALYSIS

SELECT
    ship_state,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY ship_state
ORDER BY recorded_amount DESC
LIMIT 10;


-- 9: ORDER STATUS ANALYSIS

SELECT
    status,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM amazon_sales_data),
        2
    ) AS item_percentage
FROM amazon_sales_data
GROUP BY status
ORDER BY order_items DESC;


-- 10: FULFILMENT ANALYSIS

SELECT
    fulfilment,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY fulfilment
ORDER BY recorded_amount DESC;


-- 11: COURIER STATUS ANALYSIS

SELECT
    courier_status,
    COUNT(*) AS order_items,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM amazon_sales_data),
        2
    ) AS item_percentage
FROM amazon_sales_data
GROUP BY courier_status
ORDER BY order_items DESC;

-- 12: B2B VS B2C ANALYSIS

SELECT
    b2b,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY b2b;


-- 13: PROMOTION ANALYSIS

SELECT
    has_promotion,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    ROUND(SUM(amount), 2) AS recorded_amount,
    ROUND(AVG(amount), 2) AS average_line_amount
FROM amazon_sales_data
GROUP BY has_promotion;


-- 14: TOP 10 PRODUCTS

SELECT
    style,
    category,
    COUNT(*) AS order_items,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY style, category
ORDER BY recorded_amount DESC
LIMIT 10;


-- 15: SHIPPING SERVICE LEVEL ANALYSIS

SELECT
    ship_service_level,
    COUNT(*) AS order_items,
    COUNT(DISTINCT order_id) AS unique_orders,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY ship_service_level;


-- 16: CITY-WISE ANALYSIS

SELECT
    ship_city,
    ship_state,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(qty) AS total_quantity,
    ROUND(SUM(amount), 2) AS recorded_amount
FROM amazon_sales_data
GROUP BY ship_city, ship_state
ORDER BY recorded_amount DESC
LIMIT 15;

-- 17: CANCELLATION ANALYSIS

SELECT
    status,
    COUNT(*) AS cancelled_order_items,
    COUNT(DISTINCT order_id) AS affected_orders,
    ROUND(SUM(amount), 2) AS associated_recorded_amount
FROM amazon_sales_data
WHERE LOWER(status) LIKE '%cancel%'
GROUP BY status;


-- 18: STATE-WISE ORDER STATUS

SELECT
    ship_state,
    status,
    COUNT(*) AS order_items
FROM amazon_sales_data
GROUP BY ship_state, status
ORDER BY ship_state, order_items DESC;


-- 19: FINAL BUSINESS SUMMARY

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(DISTINCT category) AS product_categories,
    COUNT(DISTINCT ship_state) AS states,
    MIN(date) AS start_date,
    MAX(date) AS end_date,
    ROUND(SUM(amount), 2) AS total_recorded_amount
FROM amazon_sales_data;


