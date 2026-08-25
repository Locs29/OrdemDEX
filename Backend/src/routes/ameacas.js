const express = require('express');
const router = express.Router();
const pool = require('./config/db.js');

// --- ROTAS ---

// GET - Lista todas as ameaças
router.get('/', async (req, res) => {
    try {
        const [ameacas] = await pool.query('SELECT * FROM ameacas');
        res.json(ameacas);
    } catch (error) {
        res.status(500).json({ erro: "Erro ao buscar ameaças no banco de dados." });
    }
});

// GET - Lê ameaça por ID
router.get('/:id', async (req, res) => {  
    const id = req.params.id;
    
    try {
        // Busca a ameaça exatamente pelo id
        const [linhas] = await pool.query('SELECT * FROM ameacas WHERE id = ?', [id]);
        
        if (linhas.length === 0) {
            return res.status(404).json({
                erro: "Ameaça não encontrada",
                mensagem: "Não existe nenhuma ameaça com esse id"
            });
        }

        res.json(linhas[0]);
    } catch (error) {
        res.status(500).json({ erro: "Erro ao realizar a busca no banco de dados." });
    }
});

// GET - Lê ameaça por NOME
router.get('/nome/:nome', async (req, res) => {  
    const nome = req.params.nome;
    
    try {
        // Busca a ameaça exatamente pelo nome
        const [linhas] = await pool.query('SELECT * FROM ameacas WHERE nome = ?', [nome]);
        
        if (linhas.length === 0) {
            return res.status(404).json({
                erro: "Ameaça não encontrada",
                mensagem: "Não existe nenhuma ameaça com esse nome"
            });
        }

        res.json(linhas[0]);
    } catch (error) {
        res.status(500).json({ erro: "Erro ao realizar a busca no banco de dados." });
    }
});

// POST - Adiciona uma nova ameaca
router.post('/', async (req, res) => {
    const { 
        nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, 
        presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, 
        inteligencia, presenca, vigor, tipos, pericias, resistencias, 
        vulnerabilidades, acoes, passivas 
    } = req.body;

    // Validação
    if (!nome || !pv_max) {
        return res.status(400).json({ erro: "Nome e PV Máximo são obrigatórios" });
    }

    try {
        const comandoSQL = `
            INSERT INTO ameacas (
                nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, 
                presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, inteligencia, 
                presenca, vigor, tipos, pericias, resistencias, vulnerabilidades, acoes, passivas
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;

        const valores = [
            nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, 
            presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, inteligencia, 
            presenca, vigor, 
            JSON.stringify(tipos || []), 
            JSON.stringify(pericias || []), 
            JSON.stringify(resistencias || {}), 
            JSON.stringify(vulnerabilidades || []), 
            JSON.stringify(acoes || []), 
            JSON.stringify(passivas || [])
        ];

        const [resultado] = await pool.query(comandoSQL, valores);

        // Retorna o ID gerado pelo banco
        res.status(201).json({ 
            mensagem: "Ameaça criada com sucesso!", 
            id: resultado.insertId 
        });

        //Retorna erro caso haja erro
    } catch (error) {
        console.error(error);
        res.status(500).json({ erro: "Erro ao salvar a ameaça no banco de dados." });
    }

//PUT - Edita uma ameaca por ID
router.put('/:id', async (req, res) => { 
    const id = req.params.id;
    
    // Dados
    const { 
        nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, 
        presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, 
        inteligencia, presenca, vigor, tipos, pericias, resistencias, 
        vulnerabilidades, acoes, passivas 
    } = req.body;

    try {
        
        //Verifica por id
        const comandoSQL = `
            UPDATE ameacas SET 
                nome = ?, descricao = ?, enigma_medo = ?, img = ?, vd = ?, 
                tamanho = ?, defesa = ?, deslocamento = ?, presenca_perturbadora = ?, 
                pv_max = ?, pv_machucado = ?, forca = ?, agilidade = ?, inteligencia = ?, 
                presenca = ?, vigor = ?, tipos = ?, pericias = ?, resistencias = ?, 
                vulnerabilidades = ?, acoes = ?, passivas = ?
            WHERE id = ?
        `;

        // Valores na ordem
        const valores = [
            nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, 
            presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, inteligencia, 
            presenca, vigor, 
            JSON.stringify(tipos || []), 
            JSON.stringify(pericias || []), 
            JSON.stringify(resistencias || {}), 
            JSON.stringify(vulnerabilidades || []), 
            JSON.stringify(acoes || []), 
            JSON.stringify(passivas || []),
            id
        ];

        //Executa no banco
        const [resultado] = await pool.query(comandoSQL, valores);

        //Verifica se existe id da ameaca e retorna erro
        if (resultado.affectedRows === 0) {
            return res.status(404).json({
                erro: "Ameaça não encontrada",
                mensagem: "Não existe nenhuma ameaça com esse Id"
            });
        }

        res.json({ mensagem: "Ameaça atualizada com sucesso!" });

    } catch (error) {
        console.error(error);
        res.status(500).json({ erro: "Erro ao atualizar a ameaça no banco de dados." });
    }
});

});

module.exports = router;