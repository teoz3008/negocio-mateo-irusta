USE negocio;
-- 1. Productos con su categoría, ordenados por nombre (JOIN, ORDER BY)
SELECT p.nombre AS producto, c.nombre AS categoria, p.precio
FROM productos p JOIN categorias c ON p.categoria_id = c.id ORDER BY p.nombre;
-- 2. Productos con menos de 5 unidades en stock (WHERE)
SELECT nombre, stock FROM productos WHERE stock < 5;
-- 3. Precio promedio por categoría (GROUP BY, AVG)
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p JOIN categorias c ON p.categoria_id = c.id GROUP BY c.id, c.nombre;
-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE)
SELECT c.nombre AS cliente, p.fecha, p.estado
FROM pedidos p JOIN clientes c ON p.cliente_id = c.id WHERE c.id = 1;
-- 5. Total en dinero de cada pedido (SUM, GROUP BY)
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total FROM detalle_pedido GROUP BY pedido_id;
-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING)
SELECT c.nombre, COUNT(p.id) AS cantidad_pedidos
FROM clientes c JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre HAVING COUNT(p.id) > 2;
-- 7. Eliminar un cliente sin pedidos (DELETE)
DELETE FROM clientes
WHERE id = 4 AND NOT EXISTS ( SELECT 1 FROM pedidos WHERE pedidos.cliente_id = clientes.id);