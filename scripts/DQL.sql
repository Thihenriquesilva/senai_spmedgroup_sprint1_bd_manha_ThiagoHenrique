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

SELECT * FROM Paciente INNER JOIN Consulta ON Paciente.IdPaciente = Consulta.IdPaciente;

SELECT * FROM Paciente INNER JOIN Consulta ON Paciente.IdPaciente = Consulta.IdPaciente
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico;

SELECT * FROM Medico INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade;

SELECT Clinica.Nome, CNPJ, Endereco, Usuario.Nome, CRM, Email FROM Clinica INNER JOIN Usuario ON Clinica.IdClinica = Usuario.IdClinica
INNER JOIN Medico ON Usuario.IdUsuario = Medico.IdUsuario;



DELETE FROM Especialidade 
WHERE IdEspecialidade = 15;






-- Conversao data e hora

SELECT convert(varchar, DataNascimento, 110) '110: mm/dd/aaaa' FROM Paciente;

--Quantidade de Usuarios
SELECT * FROM Usuario;
SELECT count (IdUsuario) AS QuantidadeUsuario FROM Usuario;

SELECT count (IdMedico) AS QuantidadeMedicoPorEspec FROM Medico INNER JOIN Especialidade ON  Medico.IdEspecialidade = Especialidade.IdEspecialidade
WHERE Especialidade.NomeEspec = 'Acupuntura';

-- stored procedure 

CREATE PROCEDURE U_Niver
AS
SELECT DATEDIFF (YEAR, DataNascimento,GETDATE()) AS AnosDoUsuario FROM Paciente

EXEC U_Niver;

