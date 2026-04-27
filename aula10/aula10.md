## Aula de SQL

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
