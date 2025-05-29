CREATE TABLE Pacientes (
    ID_Paciente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Genero VARCHAR(10)
);

CREATE TABLE Medicos (
    ID_Medico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(100)
);

CREATE TABLE Consultas (
    ID_Consulta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Paciente INT,
    ID_Medico INT,
    Data_Consulta DATE,
    Valor DECIMAL(10,2),
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente),
    FOREIGN KEY (ID_Medico) REFERENCES Medicos(ID_Medico)
);

CREATE TABLE Estoque (
    ID_Item INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Item VARCHAR(100),
    Categoria VARCHAR(50),
    Quantidade INT
);

CREATE TABLE Funcionarios (
    ID_Funcionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10,2)
);
