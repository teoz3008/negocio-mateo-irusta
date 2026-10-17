USE negocio;

-- 1. Mostrar todos los productos
SELECT * FROM productos;
-- 2. Mostrar productos con su categoría
SELECT p.nombre, c.nombre AS categoria, p.precio
FROM productos p JOIN categorias c ON p.categoria_id = c.id;
-- 3. Mostrar productos con precio mayor a 50
SELECT * FROM productos WHERE precio > 50;
-- 4. Mostrar clientes registrados
SELECT * FROM clientes;
-- 5. Mostrar pedidos con el nombre del cliente
SELECT p.id, c.nombre AS cliente, p.fecha, p.estado
FROM pedidos p JOIN clientes c ON p.cliente_id = c.id;
-- 6. Mostrar detalles de los pedidos
SELECT d.pedido_id, p.nombre AS producto, d.cantidad, d.precio_unitario
FROM detalle_pedido d JOIN productos p ON d.producto_id = p.id;
-- 7. Calcular el total de cada pedido
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido GROUP BY pedido_id;