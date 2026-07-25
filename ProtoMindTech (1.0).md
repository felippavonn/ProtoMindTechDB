# **ProtoMindTech (1.0)**

#### 

#### **Base De Datos**

Para su versión 1.0, la base de datos debe comenzar administrando toda la información fundamental de la empresa.

Esto quiere decir que debe tener todos los datos esenciales sobre **empleados**, **clientes**, **productos** y **ventas**, de manera que el sistema pueda crecer y escalar en sus futuras versiones.



##### **TABLAS FUNDAMENTALES**



1. ###### Empleados

* id\_empleado (PK)
* nombre
* apellido
* dni
* fecha\_nacimiento
* email
* telefono
* cargo
* fecha\_ingreso
* salario



###### 2\. Clientes

* id\_cliente (PK)
* nombre
* apellido
* email
* telefono
* direccion
* fecha\_registro



###### 3\. Productos

* id\_producto (PK)
* nombre\_producto
* descripcion
* categoria
* precio\_unitario
* stock
* fecha\_lanzamiento



###### 4\. Ventas

* id\_venta (PK)
* id\_cliente (FK - Clientes)
* id\_empleado (FK - Empleados) # Quién realizó la venta
* fecha\_venta
* total



###### 5\. Detalle\_venta

* id\_detalle (PK)
* id\_venta (FK - Ventas)
* id\_producto (FK - Productos)
* cantidad
* precio\_unitario
* subtotal
