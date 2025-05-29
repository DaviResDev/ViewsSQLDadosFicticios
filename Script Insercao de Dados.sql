INSERT INTO Pacientes (Nome, Idade, Genero) VALUES 
('Ana Souza', 34, 'Feminino'),
('Carlos Lima', 45, 'Masculino');

INSERT INTO Medicos (Nome, Especialidade) VALUES 
('Dra. Fernanda', 'Cardiologia'),
('Dr. Paulo', 'Ortopedia');

INSERT INTO Consultas (ID_Paciente, ID_Medico, Data_Consulta, Valor) VALUES
(1, 1, '2025-05-01', 250.00),
(2, 2, '2025-05-02', 300.00);

INSERT INTO Estoque (Nome_Item, Categoria, Quantidade) VALUES
('Luvas', 'Equipamentos', 100),
('Seringa', 'Consumíveis', 200);

INSERT INTO Funcionarios (Nome, Cargo, Salario) VALUES
('João Silva', 'Recepcionista', 2000.00),
('Maria Oliveira', 'Enfermeira', 3500.00);
