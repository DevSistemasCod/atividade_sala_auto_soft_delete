CREATE SCHEMA meu_banco;
USE meu_banco;


CREATE TABLE info_pessoais_aluno (
    cpf VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    tel_celular_responsavel VARCHAR(15) NOT NULL,
    tel_residencial_responsavel VARCHAR(15),
    email_responsavel VARCHAR(40) NOT NULL,
    info_pessoais_aluno_status BOOL DEFAULT 1
);


CREATE TABLE aluno (
    num_matricula INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    cpf_aluno VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(40),
    aluno_status BOOL DEFAULT 1,
    CONSTRAINT fk_cpf_aluno FOREIGN KEY (cpf_aluno) REFERENCES info_pessoais_aluno(cpf)
);


CREATE TABLE curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    duracao INT NOT NULL CHECK (duracao >= 0),
    curso_status BOOL DEFAULT 1
);


CREATE TABLE turma (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qtd_alunos INT NOT NULL CHECK (qtd_alunos >= 0),
    periodo VARCHAR(30) NOT NULL,
    semestre VARCHAR(30) NOT NULL,
    turma_status BOOL DEFAULT 1
);


CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    data_admissao DATE NOT NULL,
    professor_status BOOL DEFAULT 1
);


CREATE TABLE disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ementa TEXT NOT NULL,
    disciplina_status BOOL DEFAULT 1,
    codigo_curso INT,
	FOREIGN KEY (codigo_curso) REFERENCES curso(id)
);


CREATE TABLE matricula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_matricula INT NOT NULL,
    id_curso INT NOT NULL,
    id_turma INT NOT NULL,
    matricula_status BOOL DEFAULT 1,
    CONSTRAINT fk_matricula_aluno FOREIGN KEY (num_matricula) REFERENCES aluno(num_matricula),
    CONSTRAINT fk_curso_matricula FOREIGN KEY (id_curso) REFERENCES curso(id),
    CONSTRAINT fk_matricula_turma FOREIGN KEY (id_turma) REFERENCES turma(id)
);


CREATE TABLE aula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_professor INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_turma INT NOT NULL,
    data_aula DATE NOT NULL,
    aula_status BOOL DEFAULT 1,
    CONSTRAINT fk_professor_aula FOREIGN KEY (id_professor) REFERENCES professor(id),
    CONSTRAINT fk_disciplina_aula FOREIGN KEY (id_disciplina) REFERENCES disciplina(id),
    CONSTRAINT fk_turma_aula FOREIGN KEY (id_turma) REFERENCES turma(id)
);
