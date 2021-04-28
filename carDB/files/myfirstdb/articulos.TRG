TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` trigger insertar after insert\n    on articulos\n    for each row\n    insert into bitacora (id_articulo, nombre_nuevo, precio_nuevo, usuario, fecha, accion) values (new.id_articulo, new.nombre_articulo, new.precio, user(), now(), \'Inserto\')' 'CREATE DEFINER=`root`@`%` trigger actualizar after update\n    on articulos\n    for each row\n    insert into bitacora (id_articulo, nombre_nuevo, nombre_viejo, precio_nuevo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, new.nombre_articulo, old.nombre_articulo, new.precio, old.precio, user(), now(), \'Modifico\')' 'CREATE DEFINER=`root`@`%` trigger eliminar after delete\n    on articulos\n    for each row\n    insert into bitacora (id_articulo, nombre_viejo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, old.nombre_articulo, old.precio, user(), now(), \'Elimino\')'
sql_modes=1411383296 1411383296 1411383296
definers='root@%' 'root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=160402322660 160402353728 160402354507
