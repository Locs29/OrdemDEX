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

// _______________________________________________________________ ROTAS_________________________________________________________________________

// GET - Listar todas as ameaças
router.get('/', (req, res) => {
    const ameacas = readData();
    res.json(ameacas);
});

// Rota GET (ler) ameaças por ID
router.get('/:id', (req, res) => {  
    const id = Number(req.params.id);
    const ameacas = readData();
    const ameaca = ameacas.find(a => a.id === id);

    if (!ameaca) { //Verifica se existe o ID, se não, mostra erro
        return res.status(404).json({
            erro: "ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse Id"
        });
    };

    res.json(ameaca);
});

// Rota GET (ler) ameaças por NOME
router.get('/nome/:nome', (req, res) => {  
    const nome = String(req.params.nome);
    const ameacas = readData();
    const ameaca = ameacas.find(a => a.nome.toLowerCase() === nome.toLowerCase());

    if (!ameaca) { //Verifica se existe o Nome, se não, mostra erro
        return res.status(404).json({
            erro: "ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse nome"
        });
    };

    res.json(ameaca);
});

// POST - Criar nova ameaça
router.post('/', (req, res) => {
    const { nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presença_perturbadora, 
        sentidos, defesa, pontos_vida, resistencias, vulnerabilidade, 
        atributos, deslocamento, acoes, passivas } = req.body;

    // Validação se valor inserido
    if (!tipos || !nome || !pontos_vida) {
        return res.status(400).json({ erro: "nome, tipos, e pontos de vida são obrigatórios"});
    }

    const ameacas = readData();
    const novaAmeaca = {
        id: ameacas.length > 0 ? ameacas[ameacas.length - 1].id + 1 : 1 ,
        nome,
        descricao,
        enigma_medo,
        img,
        VD,
        tipos,
        categoria,
        tamanho,
        presença_perturbadora,
        sentidos,
        defesa,
        pontos_vida,
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

router.put('/:id', (req, res) => { // Rota PUT (modificar) algum ameaça por ID
    const id = Number(req.params.id);

    const { nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presença_perturbadora, sentidos, defesa,
            pontos_vida, resistencias, vulnerabilidade, atributos, deslocamento, acoes, passivas 
        } = req.body;

    const ameacas = readData();
    const index= ameacas.findIndex(a => a.id === id);

    if (index === -1) { //Verifica se existe pelo ID
        return res.status(404).json({
            erro: "ameaça não encontrada",
            mensagem: "Não existe nenhuma ameaça com esse Id"
        });
    };

    ameacas[index] = { id, nome, descricao, enigma_medo, img, VD, tipos, categoria, tamanho, presença_perturbadora, 
        sentidos, defesa, pontos_vida, resistencias, vulnerabilidade, atributos, deslocamento, acoes, passivas  };

    writeData(ameacas)
    res.json(ameacas[index]);
});

// DELETE - Remover por id
router.delete('/:id', (req, res) => {
    const id = Number(req.params.id);
    let ameacas = readData();
    const existe = ameacas.some(a => a.id === id);

    if (!existe) {
        return res.status(404).json({ erro: "ameaça não encontrada" });
    }

    ameacas = ameacas.filter(a => a.id !== id);
    writeData(ameacas);
    res.json({ mensagem: 'ameaça removida!' });
});

//Exposta a rota
module.exports = router;