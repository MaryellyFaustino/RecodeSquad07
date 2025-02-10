-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Site (
url_site VARCHAR(30) PRIMARY KEY,
Conteudo VARCHAR(10000),
nome VARCHAR(20),
id_email VARCHAR(20)
)

CREATE TABLE Formulario (
id_email VARCHAR(20) PRIMARY KEY,
nome VARCHAR(20),
corpo_email VARCHAR(2000)
)

CREATE TABLE destinatario (
id_destinatario VARCHAR(20) PRIMARY KEY,
conteudo_formulario VARCHAR(2000)
)

CREATE TABLE Administrador (
chave_acesso VARCHAR(20),
nome VARCHAR(20) PRIMARY KEY
)

CREATE TABLE envia (
id_destinatario VARCHAR(20),
id_email VARCHAR(20),
FOREIGN KEY(id_destinatario) REFERENCES destinatario (id_destinatario),
FOREIGN KEY(id_email) REFERENCES Formulario (id_email)
)

ALTER TABLE Site ADD FOREIGN KEY(id_email) REFERENCES Formulario (id_email)
