SELECT 
    b.brand_name,
    st.store_name,
    SUM(oi.quantity) AS total_vendas
FROM brands b

INNER JOIN products p ON b.brand_id = p.brand_id
INNER JOIN order_items oi ON p.product_id = oi.product_id
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN stores st ON o.store_id = st.store_id

GROUP BY b.brand_name, st.store_name
ORDER BY b.brand_name, st.store_name