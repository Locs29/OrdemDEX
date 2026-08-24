USE ordemdex;

-- 1. Aberração de Carne
INSERT INTO ameacas (id, nome, descricao, enigma_medo, img, vd, tamanho, defesa, deslocamento, presenca_perturbadora) VALUES 
(1, 'Aberração de Carne', 
'Originalmente, a aberração de carne foi um experimento fracassado para juntar dois corpos em um só. A dor agoniante das duas cobaias que se mantiveram conscientes durante todo o processo tormentoso se transformou numa fúria desoladora alimentada pelo Sangue.', 
NULL, 'img/AberracaoCarne.png', 40, 'grande', 19, '9m', 'DT 15'),

(2, 'Aniquilação', 
'A maior criatura já registrada na história da Realidade. Apenas relatos de civilizações distantes foram encontrados como evidência desse ser que só pode ser descrito como um apocalipse paranormal', 
'O Enigma de Medo da Aniquilação é desconhecido. Quando ele for resolvido, a Aniquilação perde sua resistência a dano e sua habilidade Tempestade de Espinhos.', 'img/Aniquilacao.png', 380, 'colossal', 58, '15m', 'DT 45'),

(3, 'Carente', 
'A criatura mais famosa do escritor de terror Daniel Hartmann, o carente é uma manifestação paranormal originada de uma história de terror que se tornou popular no mundo todo. É uma criatura nascida da inveja de um ser que nunca sentiu amor e, por isso, busca devorar os órgãos de pessoas que já foram mães para consumir o amor que nunca recebeu.', 
NULL, 'img/Carente.png', 300, 'grande', 40, '12m', 'DT 35'),

(4, 'Dama de Sangue', 
'Uma criatura grotesca que nasce a partir de um corpo humano partido no meio, com os órgãos se misturando a plantas para dar origem a sete tentáculos com flores e espinhos, além de outro tentáculo maior, central, com uma grande flor dentada. Uma dama de sangue é uma criatura nefasta que manifesta diversas habilidades paranormais.', 
'A dama de sangue é uma criatura poderosa, invocada através de um ritual que envolve o sacrifício de sete pessoas para o desabrochar de sete flores. Porém, cada flor possui uma fraqueza, conforme descrito nas habilidades ao lado.', 'img/Dama_de_Sangue.png', 60, 'enorme', 20, '12m', NULL),

(5, 'Enpap-X', 
'Originada de uma lenda perdida da antiga Suméria, a aberração “enpap-X” surgiu da dor e tortura de um prisioneiro de guerra que era obrigado a marcar em sua pele os feitos terriveis cometidos pelo seu soberano.', 
NULL, 'img/Enpap_X.png', 180, 'grande', 36, '12m', 'DT 25'),

(6, 'Kerberos', 
'O cão de três cabeças, o demônio do poço, o guardião do portão do inferno. Existem poucos relatos daqueles que encontraram um kerberos dentro da Realidade. Uma besta enorme, com mais de três metros de altura e sete metros de comprimento, seis enormes patas, uma cauda, espinhos e veias saltadas por toda a sua pele vermelha carnosa e gosmenta, e três enormes cabeças com bocas asquerosas e vis, uma diferente da outra.', 
NULL, 'img/Kerberos.png', 340, 'enorme', 46, '18m', NULL),

(7, 'Minotauro', 
'A forma de um animal enorme, furioso e bípede com mais de três metros, infectado com pústulas nojentas de Sangue e veias pulsantes por um lado inteiro de seu corpo, o minotauro é originada das lendas da mitologia grega sobre um monstro terrível que habita labirintos.', 
NULL, 'img/Minotauro.png', 280, 'grande', 44, '12m', NULL),

(8, 'Mulher Afogada', 
'Uma lenda urbana que se popularizou entre crianças graças a uma história usada por pais para evitar desperdício de água, mas que tomou proporções terríveis após um famoso escritor adaptar a lenda em um conto de terror.', 
'Quando a mulher afogada assombra um local, todas as fontes de água se tornam armadilhas potenciais: torneiras, canos, privadas, chuveiros... Tudo que estiver conectado a um sistema de um desses pontos, ela pode se manifestar em forma física com seu líquido de Sangue, agarrando esse personagem e tentando arrastá-lo para dentro dos canos onde o devorará lentamente.', 'img/Mulher_Afogada.png', 140, 'grande', 28, '9m | Forma líquida 36m', NULL),

(9, 'Titã de Sangue', 
'A maior versão já encontrada de um zumbi de sangue, o titã é uma criatura monstruosa com mais de quatro metros de altura. Uma massa corporal de carne e Sangue endurecida e musculosa, com veias saltadas ao redor de todo seu corpo e uma enorme boca com quatro gigantes quelíceras capazes de desfigurar permanentemente qualquer alvo, isto se este conseguir sair vivo de um de seus ataques brutais.', 
NULL, 'img/Tita_de_Sangue.png', 220, 'colossal', 35, '12m', NULL),

(10, 'Zumbi de Sangue', 
'Quando cadáveres que morreram de forma muito brutal ou dolorosa são abandonados em uma área, servem como uma passagem para a entidade de Sangue devorá-los e tomar controle de sua forma física.', 
NULL, 'img/Zumbi_de_Sangue.png', 20, 'médio', 17, '9m', NULL),

(11, 'Zumbi de Sangue Bestial', 
'Uma versão maior, mais forte e brutal de um zumbi de sangue, os bestiais costumam ser resultado de um cadáver que foi torturado brutalmente e sentiu dores indescritíveis antes de morrer, ou surgem do corpo de alguém com exposição paranormal elevada que foi devorado por completo pelo Sangue.', 
NULL, 'img/Zumbi_de_Sangue_Bestial.png', 100, 'grande', 23, '12m', NULL),

(12, 'Diabo', 
'Você com certeza já ouviu falar desse ser conhecido por inúmeros nomes. O Príncipe do Ódio, o Imperador das Aberrações, o Portador do Trono ou o Sangue Encarnado. Aquele que rasga a Realidade com sua presença aterrorizante e devoradora. O Diabo é uma das manifestações do Outro Lado mais significativas na história da Realidade. Um ser que nunca foi derrotado, nunca foi controlado e nunca foi aprisionado, capaz de invocar e controlar qualquer criatura paranormal irracional associada ao elemento do Sangue dentro da Realidade. VOCÊ NÃO DEVE SE ENVOLVER COM O DIABO', 
'Ninguém sabe como derrotar o Diabo. Registros antigos falam sobre símbolos sagrados que afastariam a Besta, mas nada parece funcionar de verdade. Se existe uma forma de derrotar essa criatura, esse é um segredo muito bem guardado.', 'img/Diabo.png', 400, 'médio', 66, '18m', 'DT 45'),

(13, 'Aracnasita', 
'Uma entidade originada de um aracnídeo exposto a um símbolo de invocação de Morte. Ela se desenvolve como um parasita, alimentando-se do tempo de vida humano para crescer até se tornar uma aberração gigantesca que absorve o corpo da vítima em um casulo em seu abdômen.', 
'O lodo de Morte em seu corpo foge do fogo e do calor. Caso sofra dano de fogo, a Aracnasita perde sua imunidade a dano até o início de seu próximo turno.', 'img/Aracnasita.png', 80, 'grande', 23, '12m', 'DT 20'),

(14, 'Carniçal Preto da Morte', 
'Uma tentativa de dar consciência à Morte. Possui anatomia muscular definida e age com arrogância e inteligência, utilizando símbolos hipnóticos para desviar ataques.', 
NULL, 'img/Carnical.png', 200, 'médio', 38, '12m', 'DT 30'),

(15, 'Ceifador Espiral', 
'O rosto da Morte. Todos os momentos de uma vida sendo devorados em uma espiral infinita. Onde ele se manifesta, nada permanece vivo e nenhuma estrutura resiste ao pó.', 
'Transformar a espiral em linha. Ao ser resolvido, perde resistência a dano e áreas de cinzas se tornam terreno normal.', 'img/CeifadorEspiral.png', 380, 'grande', 58, '15m', 'DT 45'),

(16, 'Enraizado', 
'Resultado de um corpo enterrado próximo à vegetação infestada pela Morte, invadido por raízes grossas e preenchido com o Lodo que movimenta seus membros reforçados pela estrutura bizarra que se forma das raízes entrelaçadas, como um esqueleto armadurado.', 
NULL, 'img/Enraizado.png', 120, 'médio', 28, '9m', 'DT 20'),

(17, 'Escutado', 
'Originado de alguém que escutou a “Melodia Espiral”, o escutado é um corpo humanoide retorcido e magro que anda de forma quadrúpede e bizarramente invertida.', 
'Tocar a melodia do escutado por 4 rodadas ininterruptas faz com que ele perca sua imunidade a dano até o fim da cena.', 'img/Escutado.png', 160, 'médio', 29, '12m', 'DT 25'),

(18, 'Esqueleto de Lodo', 
'Um cadáver consumido pela Morte, tomando uma forma completamente esquelética e acinzentada. O Lodo escorre por todos os orifícios de seu corpo, deixando um rastro que parece persegui-lo.', 
NULL, 'img/EsqueletoLodo.png', 20, 'médio', 14, '6m', 'DT 14'),

(19, 'Marionete', 
'A marionete é o resquício de uma memória distorcida por um acontecimento terrível, uma possibilidade roubada, o momento que nunca aconteceu. Tomando a forma de um esqueleto retorcido preenchido por Lodo.', 
NULL, 'img/Marionete.png', 280, 'médio', 40, '6m', 'DT 35'),

(20, 'Múmia Xipófaga', 
'Corpos entrelaçados mumificados vivos em busca da imortalidade. Aqueles agarrados pela criatura são fundidos ao seu corpo, tornando-se mais um dos seres amalgamados nas amarras da Morte.', 
NULL, 'img/Mumia.png', 240, 'médio', 35, '9m', 'DT 30'),

(21, 'Nidere', 
'O lobo invertido, o predador alfa das criaturas paranormais. Um caçador brutal e eficaz, cujos rastros propositais levam caçadores descuidados para o seu covil labiríntico.', 
'Entender a lógica dos restos ósseos das vítimas em seu covil. Quando a origem for destruída, sofre -10 na Defesa e perde Regeneração e Senso de Direção.', 'img/Nidere.png', 320, 'grande', 50, '24m', 'DT 35'),

(22, 'Sempiternal', 
'Resultado da evolução gradual de gerações isoladas expostas à Morte. Uma figura esquelética bizarra que manipula a própria percepção do tempo.', 
NULL, 'img/Sempiternal.png', 360, 'médio', 53, '12m', 'DT 40'),

(23, 'Succ', 
'Um ser quadrúpede que busca sugar completamente o ar dos pulmões de sua vítima. Emite um som alto e constante, confundido com um aspirador de pó.', 
NULL, 'img/Succ.png', 40, 'médio', 20, '12m', 'DT 15'),

(24, 'O Deus da Morte', 
'Manifestação primordial da Morte na Realidade. Entidade suprema capaz de manipular completamente a percepção temporal, consumindo a entropia de tudo o que é vivo.', 
'Sua destruição depende de outra entidade (o Anfitrião). Se resolvido, perde as habilidades Ciclo Infinito e Senhor do Tempo.', 'img/DeusMorte.png', 400, 'grande', 60, '15m', 'DT 45');