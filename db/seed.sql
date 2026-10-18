USE negocio;

INSERT INTO categorias (nombre) VALUES
('Electrónica'),
('Ropa'),
('Alimentos');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Audífonos', 1, 120.50, 10),
('Teclado', 1, 180.00, 8),
('Mouse', 1, 75.00, 4),
('Monitor', 1, 950.00, 6),
('Cargador', 1, 45.00, 3),
('Polera', 2, 80.00, 20),
('Pantalón', 2, 150.00, 12),
('Gorra', 2, 40.00, 4),
('Chaqueta', 2, 220.00, 7),
('Galletas', 3, 5.50, 50),
('Jugo', 3, 8.00, 30),
('Chocolate', 3, 12.00, 15);

INSERT INTO clientes (nombre, telefono, email) VALUES
('Juan Pérez', '70123456', 'juan@gmail.com'),
('María López', '71234567', 'maria@gmail.com'),
('Carlos Rojas', '72345678', 'carlos@gmail.com'),
('Ana Flores', '73456789', 'ana@gmail.com'),
('Luis Vargas', '74567890', 'luis@gmail.com'),
('Sofía Mendoza', '75678901', 'sofia@gmail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(2, '2026-10-02', 'Pendiente'),
(3, '2026-10-03', 'Entregado'),
(4, '2026-10-04', 'En preparación'),
(5, '2026-10-05', 'Entregado'),
(6, '2026-10-06', 'Pendiente'),
(1, '2026-10-07', 'Entregado'),
(2, '2026-10-08', 'Entregado'),
(3, '2026-10-09', 'Pendiente'),
(1, '2026-10-10', 'Entregado');

INSERT INTO detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 120.50),
(1, 3, 2, 75.00),
(1, 10, 5, 5.50),
(2, 2, 1, 180.00),
(2, 6, 2, 80.00),
(2, 11, 3, 8.00),
(3, 4, 1, 950.00),
(3, 5, 2, 45.00),
(3, 12, 2, 12.00),
(4, 7, 1, 150.00),
(4, 8, 2, 40.00),
(5, 9, 1, 220.00),
(5, 10, 10, 5.50),
(5, 11, 4, 8.00),
(6, 1, 1, 120.50),
(6, 2, 1, 180.00),
(7, 3, 2, 75.00),
(7, 6, 3, 80.00),
(8, 4, 1, 950.00),
(8, 12, 5, 12.00),
(9, 5, 3, 45.00),
(9, 7, 1, 150.00),
(10, 8, 2, 40.00),
(10, 9, 1, 220.00),
(10, 10, 6, 5.50);