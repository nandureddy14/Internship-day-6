# Internship-day-6

1. Filter Customers by City
This query selects customers whose city is either Mumbai, Bangalore, or Hyderabad. It uses a simple IN clause to match the City column against a list of values. Great for geographic targeting.

2. Find Customers with High-Value Orders
It retrieves customers who have placed at least one order worth ₹1000 or more. It uses an EXISTS clause with a subquery that links each customer to their orders and checks for qualifying amounts.

3. List Customers with Above-Average Purchases
This one calculates each customer's total purchase value and compares it to the average order amount across all customers. If their total is equal to or above the average, the customer is included. It combines grouping, aggregation, and a scalar subquery—all in one!

4. Get Orders on the Day of the Highest Sale
This query identifies the day on which the maximum order amount occurred and fetches all orders placed on that specific date. It uses nested subqueries to first find the max amount, then the date, and finally all orders from that day.

Let me know if you'd like these turned into bullet points or styled with Markdown—it’ll make your README even more polished and professional 💡
