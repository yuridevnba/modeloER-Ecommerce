CREATE TABLE `Fornecedor` (
	`id_fornecedor` varchar(30) NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`CNPJ` int(30) NOT NULL,
	PRIMARY KEY (`id_fornecedor`)
);

CREATE TABLE `Produto` (
	`id_produto` varchar(30) NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`id_fornecedor` varchar(30) NOT NULL,
	`id_estoque` varchar(30) NOT NULL,
	`preço` varchar(30) NOT NULL,
	PRIMARY KEY (`id_produto`)
);

CREATE TABLE `Estoque` (
	`id_estoque` varchar(30) NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`endereço` varchar(30) NOT NULL,
	`fone` int(30) NOT NULL,
	PRIMARY KEY (`id_estoque`)
);

CREATE TABLE `Pedido` (
	`id_pedido` varchar(30) NOT NULL AUTO_INCREMENT,
	`id_produto` varchar(30) NOT NULL,
	`id_cliente` varchar(30) NOT NULL,
	`id_pagamento` varchar(30) NOT NULL,
	PRIMARY KEY (`id_pedido`)
);

CREATE TABLE `Cliente` (
	`id_cliente` varchar(30) NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`fone` int(30) NOT NULL,
	`endereço` varchar(30) NOT NULL,
	`CPF` int(30) NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `Pagamento` (
	`id_pagamento` varchar(30) NOT NULL AUTO_INCREMENT,
	`tipo_pagamento` varchar(30) NOT NULL,
	`id_cliente` varchar(30) NOT NULL,
	PRIMARY KEY (`id_pagamento`)
);

CREATE TABLE `Rastreamento` (
	`cod_rastreamento` varchar(30) NOT NULL AUTO_INCREMENT,
	`id_cliente` varchar(30) NOT NULL,
	`id_produto` varchar(30) NOT NULL,
	`status` varchar(30) NOT NULL,
	PRIMARY KEY (`cod_rastreamento`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`id_fornecedor`) REFERENCES `Fornecedor`(`id_fornecedor`);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk1` FOREIGN KEY (`id_estoque`) REFERENCES `Estoque`(`id_estoque`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk0` FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id_produto`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk1` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente`(`id_cliente`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk2` FOREIGN KEY (`id_pagamento`) REFERENCES `Pagamento`(`id_pagamento`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente`(`id_cliente`);

ALTER TABLE `Rastreamento` ADD CONSTRAINT `Rastreamento_fk0` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente`(`id_cliente`);

ALTER TABLE `Rastreamento` ADD CONSTRAINT `Rastreamento_fk1` FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id_produto`);



