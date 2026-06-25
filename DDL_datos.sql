CREATE DATABASE IF NOT EXISTS pizzeria;
USE pizzeria;


CREATE TABLE categoria (
    id_categoria   INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(50)  NOT NULL,
    descripcion    VARCHAR(200)
);

CREATE TABLE ingrediente (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(100) NOT NULL,
    unidad_medida  VARCHAR(20)  NOT NULL  
);

CREATE TABLE producto (
    id_producto    INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria   INT          NOT NULL,
    nombre         VARCHAR(100) NOT NULL,
    descripcion    VARCHAR(300),
    precio         DECIMAL(10,2) NOT NULL,
    disponible     TINYINT(1)   NOT NULL DEFAULT 1,
    tipo           ENUM('pizza','panzarotti','no_elaborado') NOT NULL,
    CONSTRAINT fk_prod_cat FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE producto_ingrediente (
    id_producto    INT           NOT NULL,
    id_ingrediente INT           NOT NULL,
    cantidad       DECIMAL(8,2)  NOT NULL,
    PRIMARY KEY (id_producto, id_ingrediente),
    CONSTRAINT fk_pi_prod FOREIGN KEY (id_producto)    REFERENCES producto(id_producto),
    CONSTRAINT fk_pi_ing  FOREIGN KEY (id_ingrediente) REFERENCES ingrediente(id_ingrediente)
);


CREATE TABLE adicion (
    id_adicion  INT AUTO_INCREMENT PRIMARY KEY,
    nombre      VARCHAR(100) NOT NULL,
    precio      DECIMAL(10,2) NOT NULL,
    disponible  TINYINT(1)   NOT NULL DEFAULT 1
);

CREATE TABLE combo (
    id_combo     INT AUTO_INCREMENT PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(300),
    precio       DECIMAL(10,2) NOT NULL,
    disponible   TINYINT(1)   NOT NULL DEFAULT 1
);

CREATE TABLE combo_producto (
    id_combo     INT NOT NULL,
    id_producto  INT NOT NULL,
    cantidad     INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id_combo, id_producto),
    CONSTRAINT fk_cp_combo FOREIGN KEY (id_combo)    REFERENCES combo(id_combo),
    CONSTRAINT fk_cp_prod  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE menu (
    id_menu      INT AUTO_INCREMENT PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    vigente_desde DATE        NOT NULL,
    vigente_hasta DATE
);

CREATE TABLE menu_producto (
	id_menu INT NOT NULL,
    id_producto INT NOT NULL,
	PRIMARY KEY (id_menu, id_producto),
    CONSTRAINT fk_mp_menu FOREIGN KEY (id_menu)     REFERENCES menu(id_menu),
    CONSTRAINT fk_mp_prod FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE menu_combo (
    id_menu   INT NOT NULL,
    id_combo INT NOT NULL,
    PRIMARY KEY (id_menu, id_combo),
    CONSTRAINT fk_mc_menu  FOREIGN KEY (id_menu)  REFERENCES menu(id_menu),
    CONSTRAINT fk_mc_combo FOREIGN KEY (id_combo) REFERENCES combo(id_combo)
);

CREATE TABLE cliente (
    id_cliente  INT AUTO_INCREMENT PRIMARY KEY,
    nombre      VARCHAR(100) NOT NULL,
    apellido    VARCHAR(100) NOT NULL,
    telefono    VARCHAR(20),
    email       VARCHAR(150),
    direccion   VARCHAR(250)
);

CREATE TABLE pedido (
    id_pedido    INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente   INT          NOT NULL,
    fecha_hora   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tipo_pedido  ENUM('en_lugar','para_recoger') NOT NULL,
    estado       ENUM('pendiente','en_preparacion','listo','entregado','cancelado') NOT NULL DEFAULT 'pendiente',
    total        DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT fk_ped_cli FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pedido_producto (
    id_pedido_producto INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido          INT           NOT NULL,
    id_producto        INT           NOT NULL,
    cantidad           INT           NOT NULL DEFAULT 1,
    precio_unitario    DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_pp_ped  FOREIGN KEY (id_pedido)   REFERENCES pedido(id_pedido),
    CONSTRAINT fk_pp_prod FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE pedido_producto_adicion (
    id_pedido_producto INT NOT NULL,
    id_adicion         INT NOT NULL,
    cantidad           INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id_pedido_producto, id_adicion),
    CONSTRAINT fk_ppa_pp  FOREIGN KEY (id_pedido_producto) REFERENCES pedido_producto(id_pedido_producto),
    CONSTRAINT fk_ppa_adi FOREIGN KEY (id_adicion)         REFERENCES adicion(id_adicion)
);

CREATE TABLE pedido_combo (
    id_pedido_combo INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido       INT           NOT NULL,
    id_combo        INT           NOT NULL,
    cantidad        INT           NOT NULL DEFAULT 1,
    precio_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_pc_ped   FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_pc_combo FOREIGN KEY (id_combo)  REFERENCES combo(id_combo)
);
