<img width="711" height="785" alt="image" src="https://github.com/user-attachments/assets/87c4dd4f-47be-46b8-a18e-f83f7d829d37" />

  # Exercicio 1
- SELECT DISTINCT t1.CODESCRITORIO  
  FROM ESCRITORIO AS t1  
  LEFT JOIN CONTRATOALUGUEL AS t2  
  ON t2.CODESCRITORIO = t1.CODESCRITORIO  
  WHERE t2.DURACAO > 12  
  AND t2.DATA >= '1999-12-12'  
  AND t2.DATA <= '2007-11-07';

  # Exercicio 2
- SELECT * FROM ESCRITORIO;
