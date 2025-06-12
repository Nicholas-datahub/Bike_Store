SELECT 
    s.staff_id,
    s.first_name,
    s.last_name,
    s.email
FROM staffs s
LEFT JOIN orders o ON s.staff_id = o.staff_id
WHERE o.order_id IS NULL