select pedidos.ID_Pedido , pedidos.ID_cliente , clientes.nombre , pedidos.ID_productos , productos.Descripcion, productos.precio , pedidos.fecha , pedidos.Cantidad from pedidos , clientes , productos where pedidos.ID_cliente = clientes.ID_cliente and pedidos.ID_productos = productos.ID_productos;

select pedidos.ID_Pedido , pedidos.ID_cliente , clientes.NOMBRE , clientes.APELLIDO , pedidos.Fecha , pedidos.Cantidad , pedidos.ID_productos from pedidos , clientes where pedidos.ID_cliente = clientes.ID_cliente;

select productos.ID_productos , productos.Nombre , productos.Descripcion , productos.Precio from pedidos , productos where pedidos.ID_productos = productos.ID_productos;