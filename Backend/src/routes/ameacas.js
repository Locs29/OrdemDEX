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


module.exports = router;