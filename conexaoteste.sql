create database conexaoteste;

use conexaoteste;

create table produtos(
	id int auto_increment primary key,
    nomeprod VARCHAR(50),
    quantidade VARCHAR(50),
    tipoprod VARCHAR(50)
);

show tables;


-- alterar usuario para root e sem senha para acessar o banco
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';

SELECT * FROM conexaoteste.produtos;

-- deletar todos itens da tabela e zerar o auto incremento
TRUNCATE TABLE produtos;

-- começando tabela inserindo produtos do 0  
SELECT * FROM conexaoteste.produtos; 

-- deletando por nome de produto e por número do id (multiplos ids para deletar mais de um produto)
DELETE FROM produtos WHERE nomeprod = 'rrrrrrrrrrrrrrrr';
delete from produtos where id in (5,6,7,8,9,10,11,12,13,14,15);
delete from produtos where id in (23); 

-- select para produdos escritos com letra maiúscula
select * from produtos where binary nomeprod = upper(nomeprod);

-- deletando produto escrito com letra maiúscula
delete from produtos where binary nomeprod = upper(nomeprod);

-- alterando nome de um produto na tabela
UPDATE produtos
SET nomeprod = 'suco'
WHERE id = 24;

