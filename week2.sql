

PROBLEM 1: Find the number of apartments per nationality that are 
owned by people under 30 years old. Output the nationality along with the 
number of apartments.Sort records by the apartments count in descending order.

SELECT  
        customers.id as customer_id, 
        customers.first_name, 
        SUM(orders.total_order_cost) as total_order_cost
FROM 
        customers
JOIN 
        orders
ON 
        customers.id = orders.cust_id
GROUP BY 
        1, 2
ORDER BY
        2 ASC

===============================================================================

PROBLEM 2: Find the number of rows for each review score earned by 'Hotel Arena'. 
Output the hotel name (which should be 'Hotel Arena'), review score along with the 
corresponding number of rows with that score for the specified hotel.

SELECT
         hotel_name, 
         reviewer_score, count(*)
FROM     
         hotel_reviews
WHERE 
         hotel_name = 'Hotel Arena'
GROUP BY
         1,2

===============================================================================

PROBLEM 3: Find the total cost of each customer's orders. Output customer's id, 
first name, and the total order cost. Order records by customer first name alphabetically.

SELECT  
         customers.id as customer_id, 
         customers.first_name, 
         SUM(orders.total_order_cost) as total_order_cost
FROM
         customers
JOIN
         orders
ON 
         customers.id = orders.cust_id
GROUP BY 
         1, 2
ORDER BY 
         2 ASC

