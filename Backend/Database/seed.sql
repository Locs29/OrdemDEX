USE ordemdex;

TRUNCATE TABLE ameacas;

INSERT INTO ameacas (nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, presenca_perturbadora, pv_max, pv_machucado, forca, agilidade, inteligencia, presenca, vigor, tipos, pericias, resistencias, vulnerabilidades, acoes, passivas) VALUES 
(
    'Aberração de Carne', 
    'A criatura foi um experimento fracassado para juntar dois corpos em um só. A dor agoniante se transformou numa fúria desoladora alimentada pelo Sangue.', 
    NULL, 
    NULL, 40, 'Grande', 19, '9m', 'DT 15, 3d6 de dano mental (imunidade 30%)', 70, 35, 3, 1, 0, 1, 3, 
    '["Sangue"]', '[]', '{"Sangue": 10, "Balístico": 5, "Impacto": 5, "Perfuração": 5}', '["Morte"]', 
    '[{"nome": "Pancada", "tipo": "Ação Padrão (corpo a corpo)", "teste": "3d20+10", "dano": "2d6+6 impacto"}, {"nome": "Agarrão", "tipo": "Reação", "teste": "3d20+12", "efeito": "Ao acertar a pancada, pode tentar agarrar até dois alvos simultaneamente"}, {"nome": "Abocanhar", "tipo": "Ação de Movimento", "efeito": "Leva personagens agarrados para a boca central, causando 3d6 de perfuração no início de cada turno (Fortitude DT 15 reduz à metade)"}]', 
    '[]'
),
(
    'Aniquilação', 
    'A maior criatura já registrada, descrita apenas por relatos como um apocalipse paranormal.', 
    'Quando for resolvido (atualmente desconhecido), ela perde sua resistência a dano e a habilidade Tempestade de Espinhos.', 
    NULL, 380, 'Colossal', 58, '15m', 'DT 45, 9d8 de dano mental (imunidade 30%)', 1200, 600, 5, 4, 3, 4, 5, 
    '["Sangue", "Medo"]', '[]', '{"Geral": 50}', '["Morte"]', 
    '[{"nome": "Garras", "tipo": "Corpo a Corpo", "teste": "5d20+35", "dano": "4d10+30 corte"}, {"nome": "Tentáculos Espinhentos", "tipo": "Corpo a Corpo", "teste": "5d20+35", "dano": "2d12+30 perfuração"}, {"nome": "Disparo de Espinhos", "tipo": "Média Distância", "teste": "5d20+30", "dano": "2d10+20 perfuração"}]', 
    '[]'
),
(
    'Carente', 
    'Uma manifestação paranormal nascida da inveja em uma história de terror famosa, buscando devorar órgãos de pessoas que já foram mães.', 
    NULL, 
    NULL, 300, 'Grande', 40, '12m', 'DT 35, 8d6 de dano mental', 700, 350, 4, 4, 2, 3, 4, 
    '["Sangue"]', '[]', '{"Balístico": 20, "Impacto": 20, "Perfuração": 20, "Sangue": 20}', '["Morte"]', 
    '[{"nome": "Garras de Sangue", "teste": "4d20+30", "dano": "2d8+20 corte"}, {"nome": "Ferrão de Sangue", "teste": "4d20+30", "dano": "2d12+20 perfuração"}, {"nome": "Tentáculos", "teste": "4d20+30", "dano": "2d8+20 impacto"}]', 
    '[{"nome": "Carência", "descricao": "Recebe +1d20 em ataques contra qualquer ser que já esteve envolvido em uma gestação, mas esses seres também recebem +1d20 contra ele"}, {"nome": "Regeneração", "descricao": "Possui Cura Acelerada 20, desativada até o fim da cena caso sofra dano de Energia ou fique inconsciente"}]'
),
(
    'Dama de Sangue', 
    'Uma criatura grotesca nascida de um corpo humano partido ao meio, possuindo tentáculos associados a sete flores e espinhos.', 
    'A criatura é invocada sacrificando sete pessoas para desabrochar sete flores, e cada flor possui uma fraqueza específica.', 
    NULL, 60, 'Enorme', 20, '12m', 'DT 20, 4d6 de dano mental', 105, 52, 3, 2, 1, 2, 2, 
    '["Sangue", "Medo"]', '[]', '{}', '["Morte"]', 
    '[{"nome": "Consumo", "tipo": "Ação Padrão", "efeito": "Devora corpos adjacentes. Ao ser invocada, não possui as habilidades das flores, ganhando uma nova habilidade para cada corpo consumido."}]', 
    '[]'
),
(
    'Enpap-X', 
    'Aberração originada de uma lenda suméria, nascida da tortura de um prisioneiro obrigado a marcar atrocidades na própria pele.', 
    NULL, 
    NULL, 180, 'Grande', 36, '12m', 'DT 30, 6d6 de dano mental (Ativada ao se transformar)', 360, 180, 4, 2, 1, 2, 3, 
    '["Sangue", "Conhecimento"]', '[]', '{}', '["Morte"]', 
    '[{"nome": "Socão", "tipo": "Corpo a Corpo", "teste": "4d20+20", "dano": "2d10+10 impacto"}]', 
    '[{"nome": "Transformação", "descricao": "Começa o combate como um existido comum. Ao chegar a 0 PV, transforma-se no Enpap-X, recuperando todos os seus 360 PV e ativando sua Presença Perturbadora"}, {"nome": "Crescer", "descricao": "Garante +1d6 de dano cumulativo para cada socão consecutivo que acertar no turno"}]'
);