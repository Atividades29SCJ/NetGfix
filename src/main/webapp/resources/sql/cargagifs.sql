CREATE TABLE `favorito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gif_id` int(11) DEFAULT NULL,
  `IDFAVORITO` int(11) NOT NULL,
  `IDGIF` int(11) DEFAULT NULL,
  `IDUSUARIO` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o0kvghomgaqqjkq0fw1ho7p62` (`gif_id`),
  KEY `FK_nl75yx0voxyhy2lk8yxav4tkc` (`IDGIF`),
  CONSTRAINT `FK_nl75yx0voxyhy2lk8yxav4tkc` FOREIGN KEY (`IDGIF`) REFERENCES `gif` (`id`),
  CONSTRAINT `FK_o0kvghomgaqqjkq0fw1ho7p62` FOREIGN KEY (`gif_id`) REFERENCES `gif` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `gif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS` varchar(255) NOT NULL,
  `ATIVO` int(11) NOT NULL,
  `AUTOR` varchar(255) NOT NULL,
  `CATEGORIA` varchar(255) NOT NULL,
  `CLASSETARIA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `GENERO` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;


CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `DTNASCIMENTO` date DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*
-- Query: SELECT * FROM root.gif
LIMIT 0, 1000

-- Date: 2017-09-18 03:56
*/
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (6,'https://media.giphy.com/media/AVABGRRUBRbuE/giphy.gif',1,'Fulano A','Esporte',10,'Mulher caindo','Mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (7,'https://media.giphy.com/media/iabcSfUB6VZYc/giphy.gif',1,'Fulano A','Esporte',8,'Comemoração de gol','Futebol');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (8,'https://media.giphy.com/media/xUPGcKoAYCn5fHK0Zq/giphy.gif',1,'Fulano A','Esporte',10,'Boneco na academira','Academia');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (9,'https://media.giphy.com/media/Gh1WjKevWaoYE/giphy.gif',1,'Fulano A','Esporte',8,'Salto em altura Fail','Salto em altura');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (10,'https://media.giphy.com/media/Mu0sWSvAqnaE/giphy.gif',1,'Fulano A','Esporte',8,'Homem exausto caindo','Corrida');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (11,'https://media.giphy.com/media/WaEDmi1vk4vFm/giphy.gif',1,'Fulano B','Pet',5,'Carinho na coruja','Corujas');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (12,'https://media.giphy.com/media/ZXlDOOsfV0a8U/giphy.gif',1,'Fulano B','Pet',5,'Porco dormindo','Porcos');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (13,'https://media.giphy.com/media/3og0IxssWyWyqWeDJe/giphy.gif',1,'Fulano B','Pet',5,'Cachorro ajudando de banheiro','Dogs');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (14,'https://media.giphy.com/media/Z5y6DoZycMgXS/giphy.gif',1,'Fulano B','Pet',5,'Gato pidão','Gatos');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (15,'https://media.giphy.com/media/1246vGK3BrhEWc/giphy.gif',1,'Fulano B','Pet',5,'Alce loucao','Alces');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (16,'https://media.giphy.com/media/GB0lKzzxIv1te/giphy.gif',1,'Fulano C','Crianca',5,'Bombeiros kids','profissao kids');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (17,'https://media.giphy.com/media/3o6UBhjHobLFgEmrJu/giphy.gif',1,'Fulano C','Crianca',5,'muleque tirando onda','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (18,'https://media.giphy.com/media/AxVvk4TmDfmoMtSmmQ/giphy.gif',1,'Fulano C','Crianca',5,'Bica na cara','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (19,'https://media.giphy.com/media/hPP3tdJZS0QvK/giphy.gif',1,'Fulano C','Crianca',5,'Crianca puxando grau','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (20,'https://media.giphy.com/media/KQBB3QhDw46Uo/giphy.gif',1,'Fulano C','Crianca',5,'Crianca no open bar','Matines');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (21,'https://media.giphy.com/media/hdJqFlHpBV1ug/giphy.gif',1,'Fulano D','Celebridades',14,'Peito de jato','Clipes');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (22,'https://media.giphy.com/media/PEglcwKOSAjlu/giphy.gif',1,'Fulano D','Celebridades',12,'Harry potter assutando geral','Harry potter');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (23,'https://media.giphy.com/media/16e1J9ztaZ3na/giphy.gif',1,'Fulano D','Celebridades',12,'To entendendo nada','Tedio');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (24,'https://media.giphy.com/media/mnJRjgXZ2ooh2/giphy.gif',1,'Fulano D','Celebridades',14,'Cachaça infinita','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (25,'https://media.giphy.com/media/U7P2vnWfPkIQ8/giphy.gif',1,'Fulano D','Celebridades',18,'Falo pessoal','Montagens');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (26,'https://media.giphy.com/media/AVABGRRUBRbuE/giphy.gif',1,'Fulano A','Esporte',10,'Mulher caindo','Mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (27,'https://media.giphy.com/media/iabcSfUB6VZYc/giphy.gif',1,'Fulano A','Esporte',8,'Comemoração de gol','Futebol');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (28,'https://media.giphy.com/media/xUPGcKoAYCn5fHK0Zq/giphy.gif',1,'Fulano A','Esporte',10,'Boneco na academira','Academia');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (29,'https://media.giphy.com/media/Gh1WjKevWaoYE/giphy.gif',1,'Fulano A','Esporte',8,'Salto em altura Fail','Salto em altura');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (30,'https://media.giphy.com/media/Mu0sWSvAqnaE/giphy.gif',1,'Fulano A','Esporte',8,'Homem exausto caindo','Corrida');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (31,'https://media.giphy.com/media/WaEDmi1vk4vFm/giphy.gif',1,'Fulano B','Pet',5,'Carinho na coruja','Corujas');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (32,'https://media.giphy.com/media/ZXlDOOsfV0a8U/giphy.gif',1,'Fulano B','Pet',5,'Porco dormindo','Porcos');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (33,'https://media.giphy.com/media/3og0IxssWyWyqWeDJe/giphy.gif',1,'Fulano B','Pet',5,'Cachorro ajudando de banheiro','Dogs');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (34,'https://media.giphy.com/media/Z5y6DoZycMgXS/giphy.gif',1,'Fulano B','Pet',5,'Gato pidão','Gatos');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (35,'https://media.giphy.com/media/1246vGK3BrhEWc/giphy.gif',1,'Fulano B','Pet',5,'Alce loucao','Alces');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (36,'https://media.giphy.com/media/GB0lKzzxIv1te/giphy.gif',1,'Fulano C','Crianca',5,'Bombeiros kids','profissao kids');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (37,'https://media.giphy.com/media/3o6UBhjHobLFgEmrJu/giphy.gif',1,'Fulano C','Crianca',5,'muleque tirando onda','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (38,'https://media.giphy.com/media/AxVvk4TmDfmoMtSmmQ/giphy.gif',1,'Fulano C','Crianca',5,'Bica na cara','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (39,'https://media.giphy.com/media/hPP3tdJZS0QvK/giphy.gif',1,'Fulano C','Crianca',5,'Crianca puxando grau','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (40,'https://media.giphy.com/media/KQBB3QhDw46Uo/giphy.gif',1,'Fulano C','Crianca',5,'Crianca no open bar','Matines');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (41,'https://media.giphy.com/media/hdJqFlHpBV1ug/giphy.gif',1,'Fulano D','Celebridades',14,'Peito de jato','Clipes');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (42,'https://media.giphy.com/media/PEglcwKOSAjlu/giphy.gif',1,'Fulano D','Celebridades',12,'Harry potter assutando geral','Harry potter');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (43,'https://media.giphy.com/media/16e1J9ztaZ3na/giphy.gif',1,'Fulano D','Celebridades',12,'To entendendo nada','Tedio');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (44,'https://media.giphy.com/media/mnJRjgXZ2ooh2/giphy.gif',1,'Fulano D','Celebridades',14,'Cachaça infinita','Diversão');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (45,'https://media.giphy.com/media/U7P2vnWfPkIQ8/giphy.gif',1,'Fulano D','Celebridades',18,'Falo pessoal','Montagens');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (46,'netgfixweb/resources/gif/caobravodormindo.gif',1,'Fulanao A','favoritos',14,'tulipa','mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (47,'netgfixweb/resources/gif/caocomilao.gif',1,'Fulanao B','favoritos',14,'tulipa','mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (48,'netgfixweb/resources/gif/gatolixandounha.gif',1,'Fulanao C','favoritos',14,'tulipa','mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (49,'netgfixweb/resources/gif/JogadorTropecando.gif',1,'Fulanao D','favoritos',14,'tulipa','mulheres');
INSERT INTO `gif` (`id`,`ADDRESS`,`ATIVO`,`AUTOR`,`CATEGORIA`,`CLASSETARIA`,`DESCRICAO`,`GENERO`) VALUES (50,'netgfixweb/resources/gif/ronaldinho-dominio.gif',1,'Fulanao E','favoritos',14,'tulipa','mulheres');
