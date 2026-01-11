-- Extraktion der Kernmetriken für die Supply Chain Analyse
SELECT 
    Type AS Payment_Method,
    [Days for shipping (real)] AS Actual_Shipping_Days,
    [Days for shipment (scheduled)] AS Scheduled_Shipping_Days,
    ([Days for shipping (real)] - [Days for shipment (scheduled)]) AS Shipping_Delay,
    [Order Region] AS Region,
    [Delivery Status],
    [Late_delivery_risk],
    [Order Item Total] AS Revenue
FROM DataCo_Supply_Chain
WHERE [Delivery Status] != 'Shipping canceled';
