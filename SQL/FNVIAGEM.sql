use fabio;
CREATE TABLE Cliente( 
id_cliente int primary KEY NOT NULL auto_increment,
 nome VARCHAR(80),   
 email VARCHAR(80),  
 telefone VARCHAR(40),  
 cep VARCHAR(20),  
 cpf VARCHAR(20)  
);

CREATE TABLE Reserva(
id_reserva int primary KEY NOT NULL auto_increment, 
 valor_reserva float,  
 data_reserva varchar (20)  
); 


  CREATE TABLE Compra (
    id_cliente int,
   id_reserva int,
    data_compra varchar (10),
    total_compra float,
    id_compra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FOREIGN KEY(id_reserva) REFERENCES Reserva (id_reserva),
    FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente)
);
 
ALTER TABLE `fabio`.`compra` 
DROP FOREIGN KEY `compra_ibfk_1`,
DROP FOREIGN KEY `compra_ibfk_2`;
ALTER TABLE `fabio`.`compra` 
ADD CONSTRAINT `compra_ibfk_1`
  FOREIGN KEY (`id_reserva`)
  REFERENCES `fabio`.`reserva` (`id_reserva`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `compra_ibfk_2`
  FOREIGN KEY (`id_cliente`)
  REFERENCES `fabio`.`cliente` (`id_cliente`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

    
    
insert into cliente (nome, email, telefone, cep, cpf) values ('fabio' , 'fabio.fabio', '15987659899', '80527551', '35689645978');
insert into compra (data_compra, total_compra) values ('2026-1-20', '2500');
insert into reserva (valor_reserva, data_reserva) values ('5000', '2023-02-18');    