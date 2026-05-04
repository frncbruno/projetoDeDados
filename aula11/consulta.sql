use mydb;
show tables;

select * from atleta;

insert into atleta values (1, "Maria");
insert into atleta (nome) values ("Pedro");
delete from Atleta where idAtleta = 3;

INSERT INTO Atleta (idAtleta, nome) VALUES
(3, 'Yasmin'),
(4, 'Rafael'),
(5, 'Daniel');

select * from modalidadeclube;

INSERT INTO Modalidade (idModalidade, descricao) VALUES
(500, 'Beach Tennis'),
(501, 'Padel'),
(502, 'Volei de Areia');

select * from clube;

INSERT INTO Clube (idClube, nome) VALUES
(100, 'Star Padel'),
(101, 'Fair Play'),
(102, 'Elite'),
(103, '8000 Sports'),
(104, 'Pier Beach Tennis');

INSERT INTO Treinador (idTreinador, nome, clube) VALUES
(1000, 'Lucas', 100),
(1001, 'Pato', 102),
(1002, 'Jader', 103),
(1003, 'Enrico', 104);

INSERT INTO ModalidadeTreinador (modalidade, treinador) VALUES
(500, 1002),
(500, 1003),
(501, 1000),
(501, 1001);

INSERT INTO AtletaModalidade (atleta, modalidade) VALUES
(1, 500),
(1, 501),
(2, 500),
(3, 502),
(4, 502);

select * from modalidadeclube;

INSERT INTO ModalidadeClube (modalidade, clube) VALUES
(500, 100),
(500, 101),
(500, 103),
(500, 104),
(501, 100),
(501, 101),
(501, 102);

-- Quais os atletas que não praticam nenhuma modalidade?
SELECT t1.nome, t4.descricao
FROM atleta AS t1

LEFT JOIN atletamodalidade AS t2
ON t1.idAtleta = t2.atleta

LEFT JOIN modalidadeclube AS t3
ON t2.modalidade = t3.modalidade

LEFT JOIN modalidade AS t4
ON t4.idModalidade = t3.modalidade

LEFT JOIN clube AS t5
ON t5.idClube = t3.clube

LEFT JOIN modalidadetreinador AS t6
ON t6.modalidade = t4.idModalidade

LEFT JOIN treinador AS t7
ON t7.idTreinador = t6.treinador;

-- Portanto, Yasmin, Rafael e Daniel estão sem nenhuma modalidade

-- Qual o clube que está sem treinador?
-- Quais as modalidades que a Maria pratica?
-- Motre todas os atletas (nomes) e suas modalidades praticadas?
