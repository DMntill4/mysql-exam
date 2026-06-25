USE pizzeria;

INSERT INTO categoria (nombre, descripcion) VALUES
('Pizza',        'Pizza con piña'),
('Panzarotti',   'Panzerottis rellenos horneados'),
('Bebida',       'Bebidas frías y calientes'),
('Postre',       'Postres y dulces'),
('Snack',        'Entradas y snacks');

INSERT INTO ingrediente (nombre, unidad_medida) VALUES
('Harina de trigo',   'g'),
('Salsa de tomate',   'ml'),
('Queso mozzarella',  'g'),
('Pepperoni',         'g'),
('Jamón',             'g'),
('Champiñones',       'g'),
('Pimentón rojo',     'g'),
('Piña',         'g'),
('Pollo desmenuzado', 'g'),
('Tocino',            'g'),
('Queso parmesano',   'g'),
('Levadura',          'g'),
('Aceite de oliva',   'ml');

INSERT INTO producto (id_categoria, nombre, descripcion, precio, tipo) VALUES
(1, 'Pizza Margarita',      'Clásica con salsa de tomate y mozzarella',          18000, 'pizza'),
(1, 'Pizza Pepperoni',      'Con abundante pepperoni y mozzarella',               22000, 'pizza'),
(1, 'Pizza Hawaiana',       'Jamón, piña y mozzarella',                           21000, 'pizza'),
(1, 'Pizza Vegetariana',    'Champiñones, pimentón, cebolla y aceitunas',         20000, 'pizza'),
(1, 'Pizza Pollo BBQ',      'Pollo, tocino, salsa BBQ y mozzarella',              24000, 'pizza'),
(1, 'Pizza 4 Quesos',       'Mozzarella, parmesano, gouda y queso azul',          25000, 'pizza');

INSERT INTO producto (id_categoria, nombre, descripcion, precio, tipo) VALUES
(2, 'Panzerotti Queso',     'Relleno de queso mozzarella y salsa de tomate',     12000, 'panzarotti'),
(2, 'Panzerotti Jamón',     'Relleno de jamón y queso mozzarella',                14000, 'panzarotti'),
(2, 'Panzerotti Pepperoni', 'Relleno de pepperoni y mozzarella',                  15000, 'panzarotti'),
(2, 'Panzerotti Pollo',     'Relleno de pollo desmenuzado y pimentón',            15000, 'panzarotti');

INSERT INTO producto (id_categoria, nombre, descripcion, precio, tipo) VALUES
(3, 'Coca Cola', 'Deliciosa bebida fria', 3000, 'no elaborado'),
(3, 'Sprite', 'Deliciosa bebida fria', 2500, 'no elaborado'),
(3, 'Granizado de Fresa', 'Deliciosa bebida fria', 8000, 'no elaborado'),
(3, 'Cerveza', 'Deliciosa bebida alcoholica fria', 6000, 'no elaborado');

INSERT INTO producto (id_categoria, nombre, descripcion, precio, tipo) VALUES
(4, 'Brownie de Chocolate', 'Delicioso postre de chocolate', 6000, 'no elaborado'),
(4, 'Cheesecake', 'Delicioso postre', 8000, 'no elaborado'),
(4, 'Postre de Limon', 'Delicioso postre de limon', 4000, 'no elaborado');

INSERT INTO producto (id_categoria, nombre, descripcion, precio, tipo) VALUES
(5, 'Pan de Ajo',    'Pan tostado con mantequilla de ajo', 6000, 'no_elaborado'),
(5, 'Palitos de Queso', 'Palitos crujientes de queso',     7000, 'no_elaborado');

INSERT INTO producto_ingrediente VALUES (1,1,250),(1,2,80),(1,3,150),(1,14,5),(1,15,10);
INSERT INTO producto_ingrediente VALUES (2,1,250),(2,2,80),(2,3,150),(2,4,100),(2,14,5);
INSERT INTO producto_ingrediente VALUES (3,1,250),(3,2,80),(3,3,150),(3,5,80),(3,14,5);
INSERT INTO producto_ingrediente VALUES (4,1,250),(4,2,80),(4,3,120),(4,6,60),(4,7,50),(4,8,40),(4,9,40);
INSERT INTO producto_ingrediente VALUES (5,1,250),(5,2,60),(5,3,130),(5,10,100),(5,11,50);
INSERT INTO producto_ingrediente VALUES (6,1,250),(6,2,60),(6,3,100),(6,13,60),(6,14,5);
INSERT INTO producto_ingrediente VALUES (7,1,120),(7,2,40),(7,3,100),(7,14,3);
INSERT INTO producto_ingrediente VALUES (8,1,120),(8,2,40),(8,3,80),(8,5,70),(8,14,3);
INSERT INTO producto_ingrediente VALUES (9,1,120),(9,2,40),(9,3,80),(9,4,70),(9,14,3);
INSERT INTO producto_ingrediente VALUES (10,1,120),(10,2,40),(10,3,80),(10,10,80),(10,14,3);

INSERT INTO adicion (nombre, precio) VALUES
('Extra Queso',         2000),
('Extra Pepperoni',     2500),
('Extra Salsa BBQ',     1500),
('Extra Salsa Pesto',   1500),
('Extra Champiñones',   1500),
('Borde de Queso',      3000),
('Extra Jamón',         2000),
('Extra Pollo',         2500),
('Orégano Extra',        500),
('Chile Flakes',         500);

INSERT INTO combo (nombre, descripcion, precio) VALUES
('Combo Familiar',    '2 pizzas grandes + 4 bebidas 350ml',              68000),
('Combo Pareja',      '1 pizza mediana + 2 bebidas 350ml',               32000),
('Combo Personal',    '1 panzarotti + 1 bebida 350ml + 1 postre',        22000),
('Combo BBQ',         '1 pizza Pollo BBQ + 2 bebidas 600ml',             36000),
('Combo Amigos',      '3 panzarottis + 3 bebidas 350ml + 1 pan de ajo',  55000);


INSERT INTO combo_producto VALUES (1,1,2),(1,11,4); 
INSERT INTO combo_producto VALUES (2,2,1),(2,11,2);
INSERT INTO combo_producto VALUES (3,7,1),(3,11,1),(3,16,1);
INSERT INTO combo_producto VALUES (4,5,1),(4,12,2);
INSERT INTO combo_producto VALUES (5,8,3),(5,11,3),(5,19,1);

INSERT INTO menu (nombre, vigente_desde) VALUES ('Menú Principal 2026', '2026-01-01');

INSERT INTO menu_producto (id_menu, id_producto)
VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),   -- pizzas
       (1,7),(1,8),(1,9),(1,10),               -- panzarottis
       (1,11),(1,12),(1,13),(1,14),(1,15),     -- bebidas
       (1,16),(1,17),(1,18),                   -- postres
       (1,19),(1,20);      
       
INSERT INTO menu_combo (id_menu, id_combo) VALUES (1,1),(1,2),(1,3),(1,4),(1,5);

INSERT INTO cliente (nombre, apellido, telefono, email, direccion) VALUES
('Carlos',    'Rodríguez', '3001234567', 'carlos@email.com',   'Cra 5 #10-20'),
('Ana',       'Martínez',  '3109876543', 'ana@email.com',      'Cll 15 #8-45'),
('Luis',      'García',    '3207654321', 'luis@email.com',     'Av 3 #22-10'),
('María',     'López',     '3154321098', 'maria@email.com',    'Cra 9 #5-30'),
('Jorge',     'Pérez',     '3008765432', 'jorge@email.com',    'Cll 2 #11-50'),
('Valeria', 'Estefania',    '3112345678', 'vale@email.com',     'Cra 12 #18-5'),
('Andrés',    'Vargas',    '3219876543', 'andres@email.com',   'Cll 7 #3-15'),
('Sofía',     'Mora',      '3167654321', 'sofia@email.com',    'Av 1 #9-40'),
('Felipe',    'Castro',    '3014321098', 'felipe@email.com',   'Cra 6 #14-22'),
('Daniela',   'Ortiz',     '3128765432', 'daniela@email.com',  'Cll 20 #6-8');


INSERT INTO pedido (id_cliente, fecha_hora, tipo_pedido, estado, total) VALUES

( 1, '2026-06-01 12:30:00', 'en_lugar',    'entregado', 40000),
( 2, '2026-06-01 13:00:00', 'para_recoger','entregado', 22000),
( 3, '2026-06-02 19:15:00', 'en_lugar',    'entregado', 68000),
( 4, '2026-06-02 20:00:00', 'para_recoger','entregado', 32000),
( 5, '2026-06-03 12:45:00', 'en_lugar',    'entregado', 55000),
( 1, '2026-06-03 19:30:00', 'para_recoger','entregado', 22000),
( 6, '2026-06-04 20:00:00', 'en_lugar',    'entregado', 36000),
( 7, '2026-06-05 13:00:00', 'para_recoger','entregado', 22000),
( 2, '2026-06-05 19:45:00', 'en_lugar',    'entregado', 44000),
( 8, '2026-06-06 20:30:00', 'para_recoger','entregado', 32000),

( 3, '2026-06-07 12:00:00', 'en_lugar',    'entregado', 55000),
( 9, '2026-06-07 19:00:00', 'para_recoger','entregado', 22000),
( 1, '2026-06-08 13:30:00', 'en_lugar',    'entregado', 68000),
( 4, '2026-06-09 19:15:00', 'para_recoger','entregado', 24500),
( 5, '2026-06-09 20:00:00', 'en_lugar',    'entregado', 32000),
( 6, '2026-06-10 12:30:00', 'para_recoger','entregado', 36000),
( 7, '2026-06-10 19:30:00', 'en_lugar',    'entregado', 22000),
(10, '2026-06-11 20:00:00', 'para_recoger','entregado', 55000),
( 2, '2026-06-12 12:45:00', 'en_lugar',    'entregado', 32000),
( 8, '2026-06-13 19:00:00', 'para_recoger','entregado', 22000),

( 1, '2026-06-14 12:00:00', 'en_lugar',    'entregado', 40000),
( 3, '2026-06-14 19:30:00', 'para_recoger','entregado', 32000),
( 9, '2026-06-15 13:00:00', 'en_lugar',    'entregado', 68000),
( 4, '2026-06-16 20:00:00', 'para_recoger','entregado', 22000),
( 5, '2026-06-16 19:15:00', 'en_lugar',    'entregado', 55000),
( 6, '2026-06-17 12:30:00', 'para_recoger','entregado', 36000),
( 7, '2026-06-18 19:30:00', 'en_lugar',    'entregado', 22000),
(10, '2026-06-18 20:00:00', 'para_recoger','entregado', 32000),

( 2, '2026-06-19 12:00:00', 'en_lugar',    'entregado', 44000),
( 1, '2026-06-20 19:00:00', 'para_recoger','entregado', 36000),
( 3, '2026-06-20 12:30:00', 'en_lugar',    'entregado', 68000),
( 5, '2026-06-21 20:00:00', 'para_recoger','entregado', 22000),
( 8, '2026-06-22 19:15:00', 'en_lugar',    'entregado', 32000),
( 9, '2026-06-23 12:45:00', 'para_recoger','entregado', 55000),
( 4, '2026-06-24 19:30:00', 'en_lugar',    'entregado', 22000),
( 6, '2026-06-24 20:00:00', 'para_recoger','entregado', 36000),
(10, '2026-06-25 12:00:00', 'en_lugar',    'entregado', 32000),
( 1, '2026-06-25 19:00:00', 'para_recoger','entregado', 22000);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 18000),(1, 11, 2, 4000),(1, 19, 1, 6000);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(9, 2, 2, 22000),(9, 12, 2, 6000);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(14, 5, 1, 24000),(14, 11, 1, 4000),(14, 19, 1, 6000);   

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(21, 6, 1, 25000),(21, 11, 2, 4000),(21, 17, 1, 8000);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(29, 4, 2, 20000),(29, 15, 2, 5000);

INSERT INTO pedido_combo (id_pedido, id_combo, cantidad, precio_unitario) VALUES
( 2, 3, 1, 22000),
( 3, 1, 1, 68000),
( 4, 2, 1, 32000),
( 5, 5, 1, 55000),
( 6, 3, 1, 22000),
( 7, 4, 1, 36000),
( 8, 3, 1, 22000),
(10, 2, 1, 32000),
(11, 5, 1, 55000),
(12, 3, 1, 22000),
(13, 1, 1, 68000),
(15, 2, 1, 32000),
(16, 4, 1, 36000),
(17, 3, 1, 22000),
(18, 5, 1, 55000),
(19, 2, 1, 32000),
(20, 3, 1, 22000),
(22, 2, 1, 32000),
(23, 1, 1, 68000),
(24, 3, 1, 22000),
(25, 5, 1, 55000),
(26, 4, 1, 36000),
(27, 3, 1, 22000),
(28, 2, 1, 32000),
(30, 4, 1, 36000),
(31, 1, 1, 68000),
(32, 3, 1, 22000),
(33, 2, 1, 32000),
(34, 5, 1, 55000),
(35, 3, 1, 22000),
(36, 4, 1, 36000),
(37, 2, 1, 32000),
(38, 3, 1, 22000);


INSERT INTO pedido_producto_adicion (id_pedido_producto, id_adicion, cantidad) VALUES
(1,  1, 1),   -- Pizza Margarita + Extra Queso
(1,  6, 1),   -- Pizza Margarita + Borde de Queso
(4,  2, 1),   -- Pizza Pepperoni + Extra Pepperoni
(4,  1, 1),   -- Pizza Pepperoni + Extra Queso
(6,  3, 1),   -- Pizza Pollo BBQ + Extra Salsa BBQ
(6,  8, 1),   -- Pizza Pollo BBQ + Extra Pollo
(9,  1, 1),   -- Pizza 4 Quesos + Extra Queso
(9,  6, 1),   -- Pizza 4 Quesos + Borde de Queso
(12, 5, 1),   -- Pizza Vegetariana + Extra Champiñones
(12, 4, 1);   -- Pizza Vegetariana + Extra Salsa Pesto