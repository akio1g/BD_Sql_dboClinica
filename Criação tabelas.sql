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