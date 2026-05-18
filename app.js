const express = require('express');
const app = express();
const PORT = 3000;

//Exportas as rotas

const ameacaRoutes = require('./routes/ameacas'); //rota das ameaças


app.use(express.json());
app.use(express.static('public'));


app.use('/ameacas', ameacaRoutes); //Define que as rotas das ameaças teram /ameacas antes


app.listen(PORT, () => { // Para mostrar aonda o servidor está rodando no terminal e executar mais fácil
    console.log(`Servidor rodando na porta http://localhost:${PORT}`);
});