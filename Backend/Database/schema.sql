CREATE DATABASE IF NOT EXISTS ordemdex;
USE ordemdex;

CREATE TABLE IF NOT EXISTS ameacas (
    -- Dados básicos da ameaça
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT,
    enigma_medo TEXT,
    img VARCHAR(255),
    vd INT DEFAULT 0,
    tamanho VARCHAR(50),
    defesa INT DEFAULT 0,
    deslocamento VARCHAR(50) DEFAULT '9m',
    presenca_perturbadora VARCHAR(100),

    -- Pontos de Vida e Atributos em colunas INT
    pv_max INT DEFAULT 0,
    pv_machucado INT DEFAULT 0,
    forca INT DEFAULT 0,
    agilidade INT DEFAULT 0,
    inteligencia INT DEFAULT 0,
    presenca INT DEFAULT 0,
    vigor INT DEFAULT 0,

    -- Listas e Objetos Dinâmicos em JSON
    tipos JSON,            -- Elementos 
    pericias JSON,         -- Perícias treinadas
    resistencias JSON,     -- Resistências a dano
    vulnerabilidades JSON, -- Fraquezas
    acoes JSON,            -- Ações da criatura
    passivas JSON,         -- Habilidades passivas
);