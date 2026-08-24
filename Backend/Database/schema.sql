CREATE DATABASE IF NOT EXISTS ordemDEX;
USE ordemDEX;

CREATE TABLE IF NOT EXISTS ameacas (

    -- Dados basicos da ameaca
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT,
    enigma_medo TEXT,
    img VARCHAR(255),
    vd INT DEFAULT 0,
    tamanho VARCHAR(50),
    defesa INT DEFAULT 0,
    deslocamento INT DEFAULT 0,
    
    -- Pontos de Vida e Atributos em colunas INT
    pv_max INT DEFAULT 0,
    pv_machucado INT DEFAULT 0,
    forca INT DEFAULT 0,
    agilidade INT DEFAULT 0,
    inteligencia INT DEFAULT 0,
    presenca INT DEFAULT 0,
    vigor INT DEFAULT 0,
    
    -- Listas em JSON
    tipos JSON,            -- elementos ameaca
    pericias JSON,         -- Pericias treinadas da ameaca
    resistencias JSON,     -- Resistencias da ameaca
    vulnerabilidades JSON, -- Fraquezas da ameaca
    acoes JSON,            -- Array de objetos com nome, descrição e dados da ação
    passivas JSON          -- Array de habilidades passivas
);