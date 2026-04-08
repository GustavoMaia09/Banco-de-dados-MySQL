CREATE DATABASE projeto_daynara_gustavo;
USE projeto_daynara_gustavo;
CREATE TABLE tbProfessor(
matricula_prof int primary key,
nome_prof varchar(100),
telefone_prof varchar(15)
);
CREATE TABLE tbDisciplina(
id_disciplina int auto_increment primary key,
nome_disciplina varchar(30),
matricula_prof_FK int,
foreign key (matricula_prof_FK) references tbProfessor (matricula_prof)
);
CREATE TABLE tbAluno(
matricula_aluno int primary key,
nome_aluno varchar(100),
data_nasc_aluno date
);
CREATE TABLE tbAluno_Disciplina(
matricula_aluno_FK int,
codigo_dis_FK int,
foreign key (matricula_aluno_FK) references tbAluno (matricula_aluno),
foreign key (codigo_dis_FK) references tbDisciplina (id_disciplina)
);