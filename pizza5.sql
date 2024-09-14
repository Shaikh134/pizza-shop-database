-- List the top 5 most ordered pizza types along with their quantitiy
SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS orderd_pizzas
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY orderd_pizzas DESC
LIMIT 5;