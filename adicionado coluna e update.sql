ALTER TABLE Medico Add dia_atendimento varchar(10)
GO

UPDATE Medico
SET dia_atendimento='2ª feira'
where codigo = 100001 or codigo = 100003
GO 

UPDATE Medico
SET dia_atendimento='4ª feira'
where codigo = 100002
GO

UPDATE Medico
SET dia_atendimento='5ª feira'
where codigo = 100004
GO