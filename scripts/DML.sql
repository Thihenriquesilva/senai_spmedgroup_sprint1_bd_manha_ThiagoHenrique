USE SpMEdBD;

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


INSERT INTO Clinica (Nome, CNPJ, Endereco)
VALUES ('SP Medical Group', '86.400.902/0001-30', 'Av. Barão Limeira, 532, São Paulo, SP');


INSERT INTO TipoUsuario (NomeTipoUsuario)
VALUES ('Administrador'), ('Medico'), ('Paciente');

INSERT INTO Especialidade (NomeEspec)
VALUES ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'), ('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'),
		('Cirurgia Vascular'), ('Dermatologia'),('Radioterapia'), ('Urologia'), ('Pediatria'), ('Psiquiatria');

INSERT INTO Situacao (Valor)
VALUES ('Realizada'), ('Cancelada'), ('Agendada');

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


INSERT INTO Usuario (IdTipoUsuario, IdClinica, Nome, Email, Senha)
VALUES ('3', '1', 'Ligia', 'ligia@gmail.com', 'ligia123'), ('3', '1', 'Alexandre', 'alexandre@gmail.com', 'alexandre132'),
		('3', '1', 'Fernando', 'fernando@gmail.com', 'feh456'), ('3', '1', 'Henrique', 'henrique@gmail.com', 'henrique567'),
		('3', '1', 'João', 'joao@hotmail.com', 'jo786'), ('3', '1', 'Bruno', 'bruno@gmail.com', 'brunao123'),
		('3', '1', 'Mariana', 'mariana@outlook.com', 'mari798'), ('2', '1', 'Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br', 'lemos368'),
		('2', '1', 'Roberto Possarle', 'roberto.possarle@spmedicalgroup.com.br', 'possarle143'), ('2', '1', 'Helena Strada', 'helena.souza@spmedicalgroup.com.br', 'helena345'),
		('1', '1', 'Zezinho', 'zezinho@gmail.com', 'zeze156'), ('1', '1', 'Luisinho', 'luisinho@gmail.com', 'lulu143');

INSERT INTO Administrador (IdUsuario)
VALUES ('11'),('12');


INSERT INTO Paciente (IdUsuario, DataNascimento, RG, CPF, Telefone, Endereco)
VALUES ('1', '1983/10/13', '43.522.543-5', '948.398.590-00', '11 3456-7654', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
		('2', '2001/07/23', '32.654.345-7', '735.569.440-57', '11 98765-6543', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
		('3', '1978/10/10', '54.636.525-3', '168.393.380-02', '11 97208-4453', 'Av. Ibirapuera - Indianópolis, 2927, São Paulo - SP, 04029-200'),
		('4', '1985/10/13', '54.366.362-5', '143.326.547-65', '11 3456-6543', 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
		('5', '1975/8/27', '32.544.444-1', '913.053.480-10', '11 7656-6377', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
		('6', '1972/3/21', '54.566.266-7', '797.992.990-04', '11 95436-8769', 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
		('7', '2018/3/5', '54.566.266-8', '137.719.130-39', '','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');

INSERT INTO Medico (IdUsuario, IdEspecialidade, CRM)
VALUES ('8', '1', '54356-SP'), ('9', '17', '53452-SP'), ('10', '16', '65463-SP');

INSERT INTO Consulta (IdMedico, IdPaciente, IdSituacao, DataConsulta)
VALUES ('3', '7', '1','20/1/20 15:00'), ('2', '2', '2', '20/1/6 10:00'), ('2', '3', '1', '20/2/7 11:00'),
		('2', '2', '1', '18/2/6 10:00'), ('1', '4', '2', '19/2/7 11:00'), ('3', '7', '3', '20/3/8 15:00'),
		('1', '4', '3', '20/3/9 11:00');

SELECT * FROM Administrador;
SELECT * FROM Consulta;

INSERT INTO Agendamento (IdAdministrador, IdConsulta)
VALUES ('1', '3'), ('1', '4'), ('2', '5'), ('1', '6'),
		('2', '7'), ('2', '8'), ('1', '9');