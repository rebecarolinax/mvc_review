CREATE DATABASE dev_db_tarde
GO

USE dev_db_tarde
GO

CREATE TABLE Professor(
ProfessorID INT PRIMARY KEY IDENTITY,
Nome VARCHAR(255),
Email VARCHAR(255),
Senha VARCHAR(255)
)
GO

CREATE TABLE Turma(
TurmaID INT PRIMARY KEY IDENTITY,
Nome VARCHAR(255),
ProfessorID INT FOREIGN KEY REFERENCES Professor(ProfessorID)
)
GO

CREATE TABLE Atividade(
AtividadeID INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(255),
TurmaID INT FOREIGN KEY REFERENCES Turma(TurmaID)
)
GO

INSERT INTO Professor(Nome,Email,Senha) VALUES 
('Rebeca Carolina', 'rebeca@email.com','admin1234'),
('Catarina', 'catarina@email.com','admin1234'),
('Gustavo', 'gustavo@email.com','admin1234')
GO

INSERT INTO Turma(Nome,ProfessorID) VALUES 
('Dev 2025', 1),
('Cyber 2025', 2),
('Ciência de Dados', 3)
GO

INSERT INTO Atividade(Descricao,TurmaID) VALUES 
('Lógica de Programação', 1),
('PenTest', 2),
('Estatística', 3)
GO
