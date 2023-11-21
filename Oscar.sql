CREATE DATABASE Oscar;

USE Oscar;

CREATE TABLE Diretores (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Filme INT,
Tipo_de_Filme VARCHAR(255)
);


INSERT INTO diretores ( Nome, Sexo, ID_Filme, Tipo_de_Filme) 
VALUES
( 'Ryusuke Hamaguchi', 'Masculino', '1', 'Mistério'),
( 'Jane Campion', 'Feminino', '2', 'Romance'),
( 'Steven Spielberg', 'Masculino', '3', 'Ficção'),
( 'Paul Thomas Anderson', 'Masculino', '4', 'Comédia'),
( 'Kenneth Branagh', 'Masculino', '5', 'Drama');


CREATE TABLE Filmes (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Roteiro INT,
Lancamento DATE
); 
INSERT INTO Filmes ( Nome, Tipo_de_Filme, ID_Roteiro, Lancamento)
VALUES
( 'Ryusuke Hamaguchi', 'Mistério','6', '2021'),
( 'Jane Campion', 'Romance', '7', '2021'),
( 'Paul Thomas', 'Comédia','8', '2021'),
( 'Steven Spielberg', 'Ficção', '9', '2021'),
( 'Kenneth Branagh', 'Drama', '10', '2021');

CREATE TABLE Atores (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Diretor INT,
ID_Filme INT,
Coadjuvante BOOLEAN
);

INSERT INTO Atores ( Nome, Sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES
('Benedict Cumberbath', 'Masculino', 'Jane Campion', 'The Power Of The Dog', 'Kodi Smit'),
('Ariana DeBose', 'Feminino', 'Steven Spielberg', 'WestSide Sory', 'Nenhum'),
('Caitriona Balfe', 'Feminino', 'Kenneth Branagh', 'Belfast', 'Judi Dench');

CREATE TABLE MelhorFilme (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFilme_Voto_Soma INT
);

INSERT INTO MelhorFilme ( Nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES
('Jane Capion', '11', ' The Power of the Dog'),
('Ryusuke Hamaguchi', '12', 'Drive My Car'),
('Pul Thomas Anderson', '13', 'Licorice Pizza'),
('Steven Spielberg', '14', 'West Sode Story'),
('Kenneth Branagh', '15', 'Belfast');

CREATE TABLE MelhorDiretor (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Diretor INT,
ID_MelhorDiretor_Voto_Soma INT
);

INSERT INTO MelhorDiretor (Nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES
('The Power of the Dog', '16', 'Jane Campion'),
('Driver My Car', '17', 'Ryusuke Hamaguchi'),
('Licorice Pizza', '18', 'Paul Thomas Anderson'),
('West Side Story', '19', 'Steven Spielberg'),
('Belafst', '20', 'Kenneth Branagh');

CREATE TABLE MelhorAtor (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Ator INT,
ID_MelhorAtor_Voto_Soma INT
);

INSERT INTO MelhorAtor ( Nome, Sexo, ID_Ator, ID_MelhorAtor_VOto_Soma)
VALUES
('The Powe of the Dog', 'M', '21', 'Benedict Cumberbath'),
('West Side Story', 'F', '22', 'Ariana DeBose' ),
('Belfast', 'F', '23', 'Belfast');

CREATE TABLE MelhorAtriz (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Atriz INT,
ID_MelhorAtriz_Voto_Soma INT
);

INSERT INTO MelhorAtriz ( Nome, Sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES
('The Eyes of Tammy Faye', 'Feminino', '24', 'Jessica Chastain'),
('The Lost Daughter', 'Feminino', '25', 'Olivia Colman'),
('Parallel Mothers', 'Feminino', '26', 'Penélope Cruz'),
('Being the Ricardos', 'Feminino', '27', 'Nicole Kidman'),
('Spencer', 'Feminino', '28', 'Kristen Stewart');

CREATE TABLE MelhorAtorCoadjuvante (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Ator INT,
ID_MelhorAtorCoadjuvante_Voto_Soma INT
);

INSERT INTO MelhorAtorCoadjuvante (Nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES
('The Power of the Dog', '29', 'Kodi Smit-McPhee'),
('West Side Story', '30', 'Ariana DeBose'),
('Belfast',  '31', 'Caitriona Balfe'),
('Belfast', '32', 'Judi Dench');

CREATE TABLE MelhorAtrizCoadjuvante (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Atriz INT,
ID_MelhorAtrizCoadjuvante_Voto_Soma INT
);

INSERT INTO MelhorAtrizCoadjuvante (Nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES
('Kodi Smit-McPhee', 33, 37),
('Ariana DeBose', 34, 38),
('Caitriona Balfe', 35, 39),
('Judi Dench', 36, 40);

CREATE TABLE MelhorRoteiroOriginal (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorRoteiroOriginal_Voto_Soma INT
);

INSERT INTO MelhorRoteiroOriginal (Nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES
('Belfast', '41', '45'),
('Licorice Pizza', '42', '46'),
('King Richard', '43', '47'),
('The Worst Person in the World', '44', '48'),
('Dont Look Up', '45', '49');


CREATE TABLE MelhorRoteiroAdaptado (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorRoteiroAdaptado_Voto_Soma INT
);

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES
('The Power of the Dog', 50, 55),
('Dune', 51, 56),
('Drive My Car', 52, 57),
('CODA', 53, 58),
('The Lost Daughter', 54, 59);

CREATE TABLE MelhorFilmeAnimacao (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorFilmeAnimacao_Voto_Soma INT
);

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES
('Encanto', 'Animação', 60, 65),
('Flee', 'Animação', 61, 66),
('Luca', 'Animação', 62, 67),
('The Mitchells vs. the Machines', 'Animação', 63, 68),
('Raya and the Last Dragon', 'Animação', 64, 69);

CREATE TABLE MelhorFilmeInternacional (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorFilmeInternacional_Voto_Soma INT
);

INSERT INTO MelhorFilmeInternacional (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES
('Drive My Car', 'Internacional', 70, 75),
('Flee', 'Internacional', 71, 76),
('The Hand of God', 'Internacional', 72, 77),
('Parallel Mothers', 'Internacional', 73, 78),
('The Worst Person in the World', 'Internacional', 74, 79);

CREATE TABLE MelhorDocumentarioLonga (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorDocumentarioLonga_Voto_Soma INT
);

INSERT INTO MelhorDocumentarioLonga (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES
('Ascension', 'Documentário', 80, 85),
('Attica', 'Documentário', 81, 86),
('Flee', 'Documentário', 82, 87),
('Summer of Soul (...or, When the Revolution Could Not Be Televised)', 'Documentário', 83, 88),
('Writing with Fire', 'Documentário', 84, 89);

CREATE TABLE MelhorDocumentarioCurta (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorDocumentarioCurta_Voto_Soma INT
);

INSERT INTO MelhorDocumentarioCurta (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES
('Audible', 'Documentário', 90, 95),
('Lead Me Home', 'Documentário', 91, 96),
('The Queen of Basketball', 'Documentário', 92, 97),
('Three Songs for Benazir', 'Documentário', 93, 98),
('When We Were Bullies', 'Documentário', 94, 99);

CREATE TABLE MelhorCurtaLiveAction (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorCurtaLiveAction_Voto_Soma INT
);

INSERT INTO MelhorCurtaLiveAction (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorCurtaLiveAction_Voto_Soma)
VALUES
('Ala Kachuu - Take and Run', 'Curta Live Action', 100, 105),
('The Dress', 'Curta Live Action', 101, 106),
('The Long Goodbye', 'Curta Live Action', 102, 107),
('On My Mind', 'Curta Live Action', 103, 108),
('Please Hold', 'Curta Live Action', 104, 109);

CREATE TABLE MelhorCurtaAnimacao (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorCurtaAnimacao_Voto_Soma INT
);

INSERT INTO MelhorCurtaAnimacao (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorCurtaAnimacao_Voto_Soma)
VALUES
('Affairs of the Art', 'Curta de Animação', 110, 115),
('Bestia', 'Curta de Animação', 111, 116),
('Boxballet', 'Curta de Animação', 112, 117),
('Robin Robin', 'Curta de Animação', 113, 118),
('The Windshield Wiper', 'Curta de Animação', 114, 119);

CREATE TABLE MelhorTrilhaSonora (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorTrilhaSonora_Voto_Soma INT
);
INSERT INTO MelhorTrilhaSonora (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorTrilhaSonora_Voto_Soma)
VALUES
('Dune', 'Trilha Sonora', 120, 125),
('The French Dispatch', 'Trilha Sonora', 121, 126),
('Encanto', 'Trilha Sonora', 122, 127),
('Parallel Mothers', 'Trilha Sonora', 123, 128),
('The Power of the Dog', 'Trilha Sonora', 124, 129);


CREATE TABLE MelhorCancaoOriginal (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorCancaoOriginal_Voto_Soma INT
);

INSERT INTO MelhorCancaoOriginal (Nome, ID_Filme, ID_MelhorCancaoOriginal_Voto_Soma)
VALUES
('Be Alive', 130, 135),
('Dos Oruguitas', 131, 136),
('Down To Joy', 132, 137),
('No Time to Die', 133, 138),
('Somehow You Do', 134, 139);

CREATE TABLE MelhorSom (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorSom_Voto_Soma INT
);

INSERT INTO MelhorSom (Nome, ID_Filme, ID_MelhorSom_Voto_Soma)
VALUES
('Belfast', 140, 145),
('Dune', 141, 146),
('No Time to Die', 142, 147),
('The Power of the Dog', 143, 148),
('West Side Story', 144, 149);

CREATE TABLE MelhorDesignProducao (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorDesignProducao_Voto_Soma INT
);

INSERT INTO MelhorDesignProducao (Nome, ID_Filme, ID_MelhorDesignProducao_Voto_Soma)
VALUES
('Dune', 150, 155),
('Nightmare Alley', 151, 156),
('The French Dispatch', 152, 157),
('The Power of the Dog', 153, 158),
('West Side Story', 154, 159);

CREATE TABLE MelhorFotografia (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFotografia_Voto_Soma INT
);

INSERT INTO MelhorFotografia (Nome, ID_Filme, ID_MelhorFotografia_Voto_Soma)
VALUES
('Dune', 160, 165),
('Nightmare Alley', 161, 166),
('The Power of the Dog', 162, 167),
('The Tragedy of Macbeth', 163, 168),
('West Side Story', 164, 169);

CREATE TABLE MelhorMaquiagemPenteados (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorMaquiagemPenteados_Voto_Soma INT
);

INSERT INTO MelhorMaquiagemPenteados (Nome, ID_Filme, ID_MelhorMaquiagemPenteados_Voto_Soma)
VALUES
('Cruella', 170, 175),
('The Eyes of Tammy Faye', 171, 176),
('House of Gucci', 172, 177),
('Coming 2 America', 173, 178),
('Dune', 174, 179);


CREATE TABLE MelhorFigurino (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFigurino_Voto_Soma INT
);

INSERT INTO MelhorFigurino (Nome, ID_Filme, ID_MelhorFigurino_Voto_Soma)
VALUES
('Cruella', 180, 185),
('Cyrano', 181, 186),
('Dune', 182, 187),
('Nightmare Alley', 183, 188),
('West Side Story', 184, 189);


CREATE TABLE MelhorEdicao (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorEdicao_Voto_Soma INT
);

INSERT INTO MelhorEdicao (Nome, ID_Filme, ID_MelhorEdicao_Voto_Soma)
VALUES
('Dune', 190, 195),
('The French Dispatch', 191, 196),
('King Richard', 192, 197),
('The Power of the Dog', 193, 198),
('tick, tick...BOOM!', 194, 199);

CREATE TABLE MelhoresEfeitosVisuais (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhoresEfeitosVisuais_Voto_Soma INT
);

INSERT INTO MelhoresEfeitosVisuais (Nome, ID_Filme, ID_MelhoresEfeitosVisuais_Voto_Soma)
VALUES
('Dune', 200, 205),
('Free Guy', 201, 206),
('No Time to Die', 202, 207),
('Shang-Chi and the Legend of the Ten Rings', 203, 208),
('Spider-Man: No Way Home', 204, 209);


CREATE TABLE CadastroUsuario (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Idade INT,
Sexo VARCHAR(10),
Data_de_Nascimento DATE,
Senha VARCHAR(255),
Usuario VARCHAR(255)

INSERT INTO CadastroUsuario (Nome, Idade, Sexo, Data_de_Nascimento, Senha, Usuario)
VALUES
('Gustavo De Oliveira Vital', 18, 'Masculino', '2005-10-29', 'senha456', 'exemplo_usuario123'),
('Tom', 20, 'Feminino', '2004-09-28', 'outrasenha456', 'outro_usuario123');

-- Criação da tabela Votacao
CREATE TABLE Votacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cadastro_Usuario INT,
    ID_MelhorFilme_Voto INT,
    ID_MelhorDiretor_Voto INT,
    ID_MelhorAtor_Voto INT,
    -- ... outras colunas para diferentes categorias de votação
    ID_MelhoresEfeitosVisuais_Voto INT
);

-- Exemplo de inserção de votos para um usuário específico (usuário com ID 1)
INSERT INTO Votacao (Cadastro_Usuario, ID_MelhorFilme_Voto, ID_MelhorDiretor_Voto, ID_MelhorAtor_Voto, ID_MelhoresEfeitosVisuais_Voto)
VALUES (19, 20, 21, 22, 23);
