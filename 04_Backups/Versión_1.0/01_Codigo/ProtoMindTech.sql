CREATE DATABASE ProtoMindTech;
USE ProtoMindTech
CREATE TABLE Empleados (
    id_empleado     INT PRIMARY KEY,
    nombre          VARCHAR(25) NOT NULL,
    apellido        VARCHAR(25) NOT NULL,
    dni             INT(8) NOT NULL UNIQUE,
    email           VARCHAR(100) NOT NULL UNIQUE,
    telefono        VARCHAR(20) NOT NULL UNIQUE,
    cargo           VARCHAR(50) NOT NULL,
    fecha_ingreso   DATE NOT NULL,
    fecha_nac       DATE NOT NULL,
    salario         DECIMAL(12,2) NOT NULL
);

CREATE TABLE Clientes (
    id_cliente      INT PRIMARY KEY,
    nombre          VARCHAR(25) NOT NULL,
    apellido        VARCHAR(25) NOT NULL,
    email           VARCHAR(100) NOT NULL UNIQUE,
    telefono        VARCHAR(20) NOT NULL UNIQUE,
    direccion       VARCHAR(75) NOT NULL,
    fecha_registro  DATE NOT NULL
);

CREATE TABLE Categorias (
    id_categoria    INT PRIMARY KEY,
    nombre          VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Productos (
    id_producto     INT PRIMARY KEY,
    id_categoria    INT NOT NULL,
    nombre          VARCHAR(100) NOT NULL UNIQUE,
    descripcion     VARCHAR(500) NOT NULL,
    precio_unitario DECIMAL(12,2) NOT NULL,
    stock           INT NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

CREATE TABLE Ventas (
    id_venta        INT PRIMARY KEY,
    id_cliente      INT NOT NULL,
    id_empleado     INT NOT NULL,
    fecha_venta     DATE NOT NULL,
    total           DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

CREATE TABLE Detalle_Venta (
    id_venta        INT NOT NULL,
    id_producto     INT NOT NULL,
    cantidad        INT NOT NULL,
    precio_unitario DECIMAL(12,2) NOT NULL,
    subtotal        DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (id_venta, id_producto),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

+-------------------------+
| Tables_in_protomindtech |
+-------------------------+
| categorias              |
| clientes                |
| detalle_venta           |
| empleados               |
| productos               |
| ventas                  |
+-------------------------+

-- ProtoMindTech Versión 1.0