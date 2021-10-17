create table Paciente (
num_beneficiario int NOT NULL PRIMARY KEY,
nome varchar(100),
logradouro varchar(200),
numero int,
cep char(8),
complemento varchar(255),
telefone varchar(11),
)

create table Especialidade (
id int not null primary key,
especialidade varchar(100)
)

create table Medico (
codigo int not null primary key,
logradouro varchar(200),
numero int,
cep char(8),
complemento varchar(255),
contato varchar(11),
especialidadeId int,
constraint fk_idEspecialidade foreign key (especialidadeId) references Especialidade (id)
)

create table Consulta (
pacienteNum_beneficiario int not null,
medicoCodigo int not null,
data_hora datetime not null primary key,
observacao varchar(255),
constraint fk_pacienteNum_ben foreign key (pacienteNum_beneficiario) references Paciente (num_beneficiario),
constraint fk_medicoCodigo foreign key (medicoCodigo) references Medico (codigo)
)
GO

INSERT INTO Paciente VALUES (99901, 'Washington Silva', 'R. Anhaia', 150, '02345000', 'Casa', '922229999'),
							(99902, 'Luis Ricardo', 'R. Voluntários da Pátria', 2251, '03254010', 'Bloco B. Apto 25', '923450987'),
							(99903, 'Maria Elisa', 'Av. Aguia de Haia', 1188, '06987020', 'Apto 1208', '912348765'),
							(99904, 'José Araujo', 'R. XV de Novembro', 18, '03678000', 'Casa', '945674312'),
							(99905, 'Joana Paula', 'R. 7 de Abril', 97, '01214000', 'Conjunto 3 - Apto 801', '912095674')

INSERT INTO Medico VALUES (100001, 'Ana Paula', 'R. 7 de Setembro', 256, '03698000', 'Casa', '915689456', 1),
						  (100002, 'Maria Aparecida', 'Av. Brasil', 32, '02145070', 'Casa', '923235454', 1),
						  (100003, 'Lucas Borges', 'Av. do Estado', 3210, '05341000', 'Apto 205', '963698585', 2),
						  (100004, 'Gabriel Oliveira', 'Av. Dom Helder Camara', 350, '03145000', 'Apto 602', '932458745', 3)

INSERT INTO Especialidade VALUES (1, 'Otorrinolaringologista'),(2,'Urologista'),(3,'Geriatra'),(4,'Pediatra')

INSERT INTO Consulta VALUES (99901, 2, '2021-09-04 13:20', 'Infecção Urina'), (99902, 3, '2021-09-04 13:15', 'Gripe'), (99901, 1, '2021-09-04 12:30', 'Infecção Garganta')
GO


ALTER TABLE Medico Add dia_atendimento varchar(10)
GO

UPDATE Medico
SET dia_atendimento='2ª feira'
where codigo = 100001 or codigo = 100003

UPDATE Medico
SET dia_atendimento='4ª feira'
wHere codigo = 100002

UPDATE Medico
SET dia_atendimento='5ª feira'
where codigo = 100004
GO

DELETE FROM Especialidade
WHERE especialidade='Pediatra'
GO

EXEC sp_rename 'Medico.dia_atendimento', 'dia_semana_atendimento', 'column'
GO

UPDATE Medico
SET logradouro = 'Av. Bras Leme', numero= 876, complemento='Apto 504',cep='02122000'
WHERE nome='Lucas Borges'
GO

Alter table Consulta
ALTER COLUMN observacao VARCHAR(200)
GO