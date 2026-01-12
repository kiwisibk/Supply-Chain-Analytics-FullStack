/* FOCUS: Analyzing Delivery Reliability (Late Delivery) in Western Europe.
  GOAL: Identify product categories with the highest risk of delays to 
        provide actionable insights for supply chain optimization.
*/

SELECT 
    -- The category of the product ordered
    "Category Name",
    
    -- Count the total number of orders per category to ensure statistical significance
    COUNT(*) AS Total_Orders,
    
    -- Use a CASE statement to count only orders where the 'Late_delivery_risk' flag is 1 (True)
    SUM(CASE WHEN "Late_delivery_risk" = 1 THEN 1 ELSE 0 END) AS Late_Orders,
    
    -- Calculate the percentage of late orders. 
    -- CAST is used to ensure the division results in a float (decimal) number.
    ROUND(
        CAST(SUM(CASE WHEN "Late_delivery_risk" = 1 THEN 1 ELSE 0 END) AS FLOAT) 
        / COUNT(*) * 100, 2
    ) AS Delay_Rate_Percentage,
    
    -- Calculate the average actual time it took to ship the items in days
    ROUND(AVG("Days for shipping (real)"), 1) AS Avg_Actual_Shipping_Days
    
FROM SupplyChain_Data

-- Filter by the specific region we processed in our Python script
WHERE "Order Region" = 'Western Europe'

-- Group the results by category to see the performance of each product group
GROUP BY "Category Name"

-- Only show categories with more than 50 orders to avoid outliers from small samples
HAVING COUNT(*) > 50

-- Sort the results so that categories with the highest delay rate appear at the top
ORDER BY Delay_Rate_Percentage DESC;
