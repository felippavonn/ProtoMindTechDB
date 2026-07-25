INSERT INTO Empleados ( id_empleado, nombre, apellido, dni, email, telefono, cargo, fecha_ingreso, fecha_nac, salario ) VALUES
(1, 'Juan', 'Pérez', 12345678, 'juan.perez@protomindtech.com', '123456789', 'Vendedor', '2020-05-10', '1990-08-15', 250000.00);

INSERT INTO Clientes ( id_cliente, nombre, apellido, email, telefono, direccion, fecha_registro ) VALUES
(1, 'María', 'Gómez', 'maria.gomez@gmail.com', '987654321', 'Calle Falsa 123', '2024-08-31');

INSERT INTO Categorias ( id_categoria, nombre ) VALUES
(1, 'Electrónica');

INSERT INTO Productos ( id_producto, id_categoria, nombre, descripcion, precio_unitario, stock, fecha_lanzamiento ) VALUES
(1, 1, 'Notebook', 'Laptop de 15 pulgadas con 16GB RAM', 950000.00, 10, '2023-03-15');

INSERT INTO Ventas ( id_venta, id_cliente, id_empleado, fecha_venta, total ) VALUES
(1, 1, 1, '2025-08-31', 950000.00);

INSERT INTO Detalle_Venta ( id_venta, id_producto, cantidad, precio_unitario, subtotal ) VALUES
(1, 1, 1, 950000.00, 950000.00);
