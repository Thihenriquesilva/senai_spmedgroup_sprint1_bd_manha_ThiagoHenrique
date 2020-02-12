CREATE DATABASE SpMEdBD;

USE SpMedBd;

CREATE TABLE Clinica (
	IdClinica INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30),
	CNPJ VARCHAR(20) NOT NULL UNIQUE,
	Endereco VARCHAR (200) NOT NULL
);

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	NomeTipoUsuario VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Especialidade(
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	NomeEspec VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Situacao(
	IdSituacao INT PRIMARY KEY IDENTITY,
	Valor VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(255) NOT NULL
);

CREATE TABLE Administrador(
	IdAdministrador INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Paciente(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	DataNascimento DATE NOT NULL,
	RG VARCHAR(15) NOT NULL UNIQUE,
	CPF VARCHAR(15) NOT NULL UNIQUE,
	Telefone VARCHAR(15) NOT NULL,
	Endereco VARCHAR(200) NOT NULL
);

CREATE TABLE Medico(
	IdMedico INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
	CRM VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE Consulta(
	IdConsulta INT PRIMARY KEY IDENTITY,
	IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
	IdSituacao INT FOREIGN KEY REFERENCES Situacao (IdSituacao),
	DataConsulta DATETIME NOT NULL
);

CREATE TABLE Agendamento(
	IdAgendamento INT PRIMARY KEY IDENTITY,
	IdAdministrador INT FOREIGN KEY REFERENCES Administrador (IdAdministrador),
	IdConsulta INT FOREIGN KEY REFERENCES Consulta (IdConsulta)
);


SELECT * FROM Clinica;
SELECT * FROM TipoUsuario;
SELECT * FROM Especialidade;
SELECT * FROM Situacao;
SELECT * FROM Usuario;
SELECT * FROM Administrador;
SELECT * FROM Paciente;
SELECT * FROM Medico;
SELECT * FROM Consulta;
SELECT * FROM Agendamento;