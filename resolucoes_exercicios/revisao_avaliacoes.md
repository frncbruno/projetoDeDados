# Parte 1

<img width="711" height="785" alt="image" src="https://github.com/user-attachments/assets/87c4dd4f-47be-46b8-a18e-f83f7d829d37" />

  ## Exercicio 1
- SELECT DISTINCT t1.CODESCRITORIO  
  FROM ESCRITORIO AS t1  
  LEFT JOIN CONTRATOALUGUEL AS t2  
  ON t2.CODESCRITORIO = t1.CODESCRITORIO  
  WHERE t2.DURACAO > 12  
  AND t2.DATA >= '1999-12-12'  
  AND t2.DATA <= '2007-11-07';

  ## Exercicio 2
- SELECT * FROM ESCRITORIO;

  ## Exercicio 3
- SELECT DISTINCT CNHCLIENTE  
  FROM CONTRATOALUGUEL  
  WHERE CODVEICULO IN (1234, 1342, 0912);  

  ## Exercicio 4
- SELECT V.*  
FROM VEICULO AS V  
INNER JOIN AUTOMOVEL AS A  
ON V.CODTIPOVEICULO = A.CODTIPOVEICULO  
WHERE A.NUMPORTAS < 4;

  ## Exercicio 5
- SELECT *
  FROM VEICULO
  WHERE PLACA LIKE '%3';

  ## Exercicio 6
- SELECT *  
  FROM CLIENTE  
  WHERE UFCNHCLIENTE = 'RS'
  AND TELEFONE IS NULL;

  ## Exercicio 7
- SELECT CNHCLIENTE  
  FROM CONTRATOALUGUEL  
  WHERE DURACAO > 90;

# Parte 2

<img width="858" height="704" alt="image" src="https://github.com/user-attachments/assets/313e9502-d528-4353-98f0-6bb7917bef9b" />

  ## Exercicio 1
- SELECT *
  FROM FILMES;

  ## Exercicio 2
- SELECT *
  FROM ATOR
  WHERE dataNascimento >= 01/01/1950
  AND dataNascimento < 01/01/1976

  ## Exercicio 3
- SELECT *, CASE WHEN dataRetirada > dataDevolucao THEN 'Devolução atrasada' END AS Atrasado  
  FROM Emprestimo  
  WHERE dataRetirada > dataDevolucao

  ## Exercicio 4 
- SELECT * 
  FROM Cliente  
  WHERE preNome LIKE '%Santos%'  
  OR sobreNome LIKE '%Santos%'  

  ## Exercicio 5
- SELECT Fita_idFita, Cliente_idCliente  
FROM Emprestimo  
WHERE dataRetirada = '2007-11-07';

# Parte 3

<img width="867" height="703" alt="image" src="https://github.com/user-attachments/assets/71a4d4e9-c97f-4379-b2ff-bef50190d808" />

  ## Exercicio 4 
- SELECT Titulo, resumo FROM Projeto;

  ## Exercicio 5
- SELECT t1.*  
  FROM Professor t1  
  LEFT JOIN Projeto t2  
  ON t1.id = PR.responsavel OR t1.id = t1.colaborador  
  WHERE t1.id IS NULL;

  ## Exercicio 6
  - SELECT t1.titulo, t1.resumo, t2.nome  
  FROM Projeto AS t1  
  LEFT JOIN Professor AS t2  
  ON t2.id = t1.responsavel  
  WHERE t2.nome = 'Alexandre Zamberlan';  

  ## Exercicio 7
- SELECT count(t1.titulo) AS QtdProjetos, t1.resumo, t2.nome  
  FROM Projeto AS t1  
  LEFT JOIN Professor AS t2  
  ON t2.id = t1.responsavel  
  GROUP BY t2.nome

  ## Exercicio 8
- SELECT t1.titulo, t1.resumo, t2.nome  
  FROM Projeto AS t1  
  LEFT JOIN Professor AS t2  
  ON t2.id = t1.responsavel  
  WHERE t1.colaborador IS NULL  
  FROM Projeto AS t1  
  LEFT JOIN Professor AS t2  
  ON t2.id = t1.responsavel  
  WHERE t2.area = 'Tecnologia'  

