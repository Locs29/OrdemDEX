const express = require('express');
const router = express.Router();
const fs = require('fs');
const path = require('path');

const pathDados = path.join(__dirname, '../data/ameacas.json');

// Função para ler dados
const readData = () => {
    const data = fs.readFileSync(pathDados);
    return JSON.parse(data);
};

// Função para salvar dados
const writeData = (data) => {
    fs.writeFileSync(pathDados, JSON.stringify(data, null, 2));
};

// --- ROTAS ---

// GET - Listar todas as ameaças
router.get('/', (req, res) => {
    const ameacas = readData();
    res.json(ameacas);
});

// GET - Ler ameaça por ID
router.get('/:id', (req, res) => {  
    const id = Number(req.params.id);
    const ameacas = readData();
    const ameaca = ameacas.find(a => a.id === id);

    if (!ameaca) {
        return res.status(404).json({
            erro: "Ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse Id"
        });
    }

    res.json(ameaca);
});

// GET - Ler ameaça por NOME
router.get('/nome/:nome', (req, res) => {  
    const nome = String(req.params.nome);
    const ameacas = readData();
    const ameaca = ameacas.find(a => a.nome.toLowerCase() === nome.toLowerCase());

    if (!ameaca) {
        return res.status(404).json({
            erro: "Ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse nome"
        });
    }

    res.json(ameaca);
});

// POST - Criar nova ameaça
router.post('/', (req, res) => {
    const { 
        nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presenca_perturbadora, defesa, pontos_vida, pericias, resistencias, 
        vulnerabilidade, atributos, deslocamento, acoes, passivas 
    } = req.body;

    // Validação básica
    if (!tipos || !nome || !pontos_vida) {
        return res.status(400).json({ erro: "Nome, tipos e pontos de vida são obrigatórios" });
    }

    const ameacas = readData();
    const novaAmeaca = {
        id: ameacas.length > 0 ? ameacas[ameacas.length - 1].id + 1 : 1,
        nome,
        descricao,
        enigma_medo,
        img,
        VD,
        tipos,
        categoria,
        tamanho,
        presenca_perturbadora,
        defesa,
        pontos_vida,
        pericias,
        resistencias,
        vulnerabilidade,
        atributos,
        deslocamento,
        acoes,
        passivas
    };

    ameacas.push(novaAmeaca);
    writeData(ameacas);

    res.status(201).json(novaAmeaca);
});

// PUT - Modificar ameaça por ID
router.put('/:id', (req, res) => { 
    const id = Number(req.params.id);
    const { 
        nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presenca_perturbadora, defesa, pontos_vida, pericias, resistencias, 
        vulnerabilidade, atributos, deslocamento, acoes, passivas 
    } = req.body;

    const ameacas = readData();
    const index = ameacas.findIndex(a => a.id === id);

    if (index === -1) {
        return res.status(404).json({
            erro: "Ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse Id"
        });
    }

    ameacas[index] = { 
        id, nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presenca_perturbadora, defesa, pontos_vida, pericias, resistencias, 
        vulnerabilidade, atributos, deslocamento, acoes, passivas  
    };

    writeData(ameacas);
    res.json(ameacas[index]);
});

// DELETE - Remover ameaça por ID
router.delete('/:id', (req, res) => {
    const id = Number(req.params.id);
    let ameacas = readData();
    const existe = ameacas.some(a => a.id === id);

    if (!existe) {
        return res.status(404).json({ erro: "Ameaça não encontrada" });
    }

    ameacas = ameacas.filter(a => a.id !== id);
    writeData(ameacas);
    res.json({ mensagem: 'Ameaça removida com sucesso!' });
});

//Exposta a rota
module.exports = router;