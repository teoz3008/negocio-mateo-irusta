USE negocio;

INSERT INTO categorias (nombre) VALUES
('Electrónica'),
('Ropa'),
('Alimentos');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Audífonos', 1, 120.50, 10),
('Polera', 2, 80.00, 20),
('Galletas', 3, 5.50, 50);

INSERT INTO clientes (nombre, telefono, email) VALUES
('Juan Pérez', '70123456', 'juan@gmail.com'),
('María López', '71234567', 'maria@gmail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-17', 'Pendiente'),
(2, '2026-10-17', 'Entregado');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 2, 120.50),
(1, 3, 5, 5.50),
(2, 2, 1, 80.00);