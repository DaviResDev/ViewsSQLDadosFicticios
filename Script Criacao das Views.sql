-- View com informações completas das consultas
CREATE OR REPLACE VIEW vw_consultas_completas AS
SELECT 
    c.ID_Consulta,
    p.Nome AS Nome_Paciente,
    p.Idade,
    p.Genero,
    m.Nome AS Nome_Medico,
    m.Especialidade,
    c.Data_Consulta,
    c.Valor
FROM Consultas c
JOIN Pacientes p ON c.ID_Paciente = p.ID_Paciente
JOIN Medicos m ON c.ID_Medico = m.ID_Medico;

-- View de total de estoque por categoria
CREATE OR REPLACE VIEW vw_estoque_categoria AS
SELECT 
    Categoria,
    SUM(Quantidade) AS Total_Itens
FROM Estoque
GROUP BY Categoria;

-- View de salários por cargo
CREATE OR REPLACE VIEW vw_salario_cargo AS
SELECT 
    Cargo,
    COUNT(*) AS Quantidade_Funcionarios,
    AVG(Salario) AS Salario_Medio
FROM Funcionarios
GROUP BY Cargo;
