CREATE DATABASE resiliadata;
USE resiliadata;

CREATE TABLE empresa( 
id_empresa INT PRIMARY KEY AUTO_INCREMENT,  
nome_empresa VARCHAR(70) NOT NULL,  
endereco VARCHAR(70) NOT NULL,  
telefone VARCHAR(70) NOT NULL
); 

CREATE TABLE tecnologias( 
id_tecnologias INT PRIMARY KEY AUTO_INCREMENT,  
area VARCHAR(70) NOT NULL,  
nome_tecnologia VARCHAR(70) NOT NULL
); 

CREATE TABLE colaborador( 
id_colaborador INT PRIMARY KEY AUTO_INCREMENT,  
nome VARCHAR(70) NOT NULL,  
cargo VARCHAR(70) NOT NULL,  
id_empresa INT NOT NULL 
); 

CREATE TABLE tecnologias_empresa( 
id_empresa INT NOT NULL,  
id_tecnologias INT NOT NULL,  
nivel_utilizacao INT NOT NULL  
); 

ALTER TABLE tecnologias_empresa ADD FOREIGN KEY(id_empresa) REFERENCES empresa(id_empresa);
ALTER TABLE tecnologias_empresa ADD FOREIGN KEY(id_tecnologias) REFERENCES tecnologias(id_tecnologias);
ALTER TABLE colaborador ADD FOREIGN KEY(id_empresa) REFERENCES empresa(id_empresa);

INSERT INTO empresa(nome_empresa, endereco, telefone) 
VALUES 
('Gabriel', 'Rua Maneira 144', '(21) 93333-3333'),
('jordão', 'Rua Meio Ruim 155', '(21) 94444-4444');

INSERT INTO tecnologias(area, nome_tecnologia) 
VALUES 
('Análise de Dados', 'MySQL'),
('Programação', 'Python');

INSERT INTO colaborador(nome, cargo, id_empresa) 
VALUES 
('Luan Santana', 'Gerente Geral', 1),
('Ariana Grande', 'Analista de Dados', 2);

INSERT INTO tecnologias_empresa(id_empresa, id_tecnologias, nivel_utilizacao) 
VALUES 
(1, 1, 4),
(1, 2, 3),
(2, 1, 5),
(2, 2, 2);
