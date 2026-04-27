## Aula de SQL

## Tabela 1
<img width="816" height="473" alt="{F9580EAF-B8CA-4A6A-8400-50BDEE072872}" src="https://github.com/user-attachments/assets/f43cbbd1-cad9-4ce8-bdaf-5af5a79c6e1f" />

---

- SELECT * FROM Paciente WHERE sexo == 'F'
- SELECT * FROM Consulta WHERE id_paciente == 4
- SELECT Paciente.nome, Consulta.data, Medico.nome FROM Paciente, Consulta WHERE Paciente.sexo == 'F' AND Paciente.id_paciente == Consulta.id_paciente AND Medico.id_medico == Consulta.id_medico

---

- Mostrar os pacientes (nome) que tieram ou vão ter consulta com médico traumatologista
- SELECT Paciente.nome, Consulta.data, Medico.nome FROM Paciente, Medico, Consulta WHERE Medico.especialidade == 'Traumato' AND Medico.id_medico == Consulta.id_medico AND Paciente.id_paciente == Consulta.id_paciente

---

- SELECT Consulta.data FROM Consulta WHERE id_paciente IN (SELECT id_paciente FROM Paciente WHERE sexo == 'F');

---

## Tabela 2
<img width="711" height="502" alt="{F02FFDF6-FFE8-4869-AE71-2AC3F1769337}" src="https://github.com/user-attachments/assets/1ad8bcbf-5318-4582-a1b9-79d5cbe296a1" />

---

- SELECT Aluno.nome,
         Disciplina.nome,
         Turma.id_turma,
         Turma.ano_semestre,
         Matricula.id_matricula,
         Curso.descricao
  FROM Aluno, Disciplina, Turma, Matricula, Curso
  WHERE Disciplina.id_disciplina = 100
  AND Turma.ano_semestre LIKE '%2026%'
  AND Turma.id_turma == Matricula.id_turma
  AND Aluno.id_aluno == Matricula.id_aluno
  AND Disciplina.id_disciplina == Turma.id_disciplina
  AND Aluno.id_curso == Curso.id_curso

---

- SELECT Aluno.nome,
         Disciplina.nome,
         Turma.ano_semestre,
         Curso.descricao
  FROM Turma, Aluno, Disciplina, Matricula
  WHERE Aluno.id_aluno = 'alexz'
  AND Turma.id_turma == Matricula.id_turma
  AND Aluno.id_aluno == Matricula.id_aluno
  AND Disciplina.id_disciplina == Turma.id_disciplina
  AND Aluno.id_curso == Curso.id_curso
