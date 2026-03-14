SELECT * FROM customer LIMIT 20

--Q1. Do highly engaged customers spend more?
WITH customer_segments AS (
    SELECT 
        customer_id, purchase_amount, previous_purchases,
        CASE 
            WHEN previous_purchases <= 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS segment
    FROM customer
)

SELECT 
    segment,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount,
    ROUND(SUM(purchase_amount), 2) AS total_revenue
FROM customer_segments
GROUP BY segment
ORDER BY total_revenue DESC;

--Q2. Is the business dependent on discounts to generate revenue?
WITH discount_revenue AS (
    SELECT 
        discount_applied,
        SUM(purchase_amount) AS revenue
    FROM customer
    GROUP BY discount_applied
)
SELECT 
    discount_applied, revenue,
    ROUND(100.0 * revenue / SUM(revenue) OVER (), 2) AS revenue_percentage
FROM discount_revenue;

--Q3. Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.
SELECT subscription_status,
COUNT(customer_id) as total_customers,
ROUND(AVG(purchase_amount),2) as avg_spend,
ROUND(SUM(purchase_amount),2) as total_revenue
from customer
GROUP BY subscription_status
ORDER BY total_revenue, avg_spend DESC;

--Q4. Which 5 products have the highest percentage of purchases with discounts applied? 
SELECT item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) as discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate desc
LIMIT 5;

--Q5. Segment customers into New, Returning, and Loyal based on their total number of previous purchases, and show the count of each segment.
WITH customer_type as (
SELECT customer_id, previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'NEW'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
	ELSE 'Loyal'
	END AS customer_segment
FROM customer
)
SELECT customer_segment, COUNT(*) as "Number of Customers"
FROM customer_type
GROUP BY customer_segment

--Q6. What are the top 3 most purchased products within each category?
WITH item_counts as (
SELECT category, item_purchased,
COUNT(customer_id) as total_orders,
ROW_NUMBER() over(partition by Category order by count(customer_id) DESC) as item_rank
FROM customer
GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
from item_counts
WHERE item_rank <=3

--Q7. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
SELECT subscription_status, 
COUNT(customer_id) as repeat_buyers
from Customer
WHERE previous_purchases >5
GROUP BY subscription_status

--Q8. What is the revenue contribution of each age group?
SELECT age_group,
SUM(purchase_amount) as total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;z

--Q9. Is customer engagement positively correlated with spending?
SELECT 
    previous_purchases,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM customer
GROUP BY previous_purchases
ORDER BY previous_purchases DESC;


