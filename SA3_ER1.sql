-- Cria o banco de dados
CREATE DATABASE TESTESEGURANCA

-- Usa o banco de dados
USE TESTESEGURANCA


-- Cria uma tabela
CREATE TABLE Usuarios
(	-- dados da tabela
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL,
);

-- Insere os dados em "USUARIOS" 
INSERT INTO Usuarios VALUES('teste@teste.com.br', '1234')
INSERT INTO Usuarios VALUES('email@email.com.br', '1234')

-- Seleciona tudo da tabela escolhida

SELECT * FROM Usuarios


SELECT UsuarioId, Email, HASHBYTES('MD5', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1

SELECT UsuarioId, Email, HASHBYTES('MD2', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('MD4', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('SHA', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('SHA1', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('SHA2_256', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('SHA2_512', Senha) AS 'Senha Criptografada' FROM Usuarios WHERE UsuarioId = 1

SELECT UsuarioId, HASHBYTES('MD5', Email) AS 'Email Hash' , HASHBYTES('MD5', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1

