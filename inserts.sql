INSERT INTO info_pessoais_aluno
(cpf, nome, tel_celular_responsavel, tel_residencial_responsavel, email_responsavel)
VALUES
('123.456.789-01', 'Fernando Pereira', '016995678901', NULL, 'fernando@email.com'),
('987.654.321-02', 'Juliana Santos Silva', '016995432102', NULL, 'juliana@email.com'),
('456.789.123-03', 'Mariana Silva Almeida', '016998912303', NULL, 'mariana@email.com'),
('789.123.456-04', 'Marcelo Mendes', '016997891234', NULL, 'marcelo@email.com'),
('234.567.890-05', 'Luana Oliveira', '016992345678', NULL, 'luana@email.com'),
('904.447.190-09', 'Chico Bento', '016992215377', NULL, 'bento@email.com');

INSERT INTO aluno (data_inicio, cpf_aluno, email)
VALUES
('2025-01-10', '123.456.789-01', 'fernando1@emaileduc.com'),
('2025-06-01', '987.654.321-02', 'juliana22@emaileduc.com'),
('2025-01-15', '456.789.123-03', 'mariana32@emaileduc.com'),
('2025-01-10', '789.123.456-04', 'marcelo11@emaileduc.com'),
('2025-06-01', '234.567.890-05', 'luana123@emaileduc.com'),
('2025-06-01', '904.447.190-09', 'bento@emaileduc.com');

INSERT INTO curso (nome, duracao)
VALUES
('Técnico em Analise de Desenvolvimento de Sistemas', 18),
('Técnico em Mecatrônica', 24),
('Técnico em Eletrônica', 24),
('Técnico em Administração', 18),
('Técnico em Mecânica', 20);

INSERT INTO disciplina (nome, ementa, codigo_curso)
VALUES
('Programação Web para Back-End', 'Tal disciplina aborda conceitos e técnicas para desenvolvimento de aplicativos web no lado do servidor, com foco em back-end.', 1),
('Programação Web para Front-End', 'Esta disciplina explora as tecnologias e práticas para desenvolvimento de aplicações web e com foco em front-end.', 1),
('Interface para Dispositivos Móveis', 'A disciplina aborda projetar e desenvolver interfaces de usuário para aplicativos móveis, com foco nos princípios de design e usabilidade.', 1),
('Banco de Dados', 'Tal disciplina contempla conceitos fundamentais de bancos de dados, modelagem de dados e linguagens de consulta SQL.', 1),
('Redes de Computadores', 'Esta disciplina aborda conceitos introdutórios sobre redes de computadores, topologias e padrões.', 1),
('Sistemas Operacionais', 'A disciplina contempla conceitos fundamentais sobre sistemas operacionais, apresentando as funcionalidades dos sistemas operacionais baseados nas plataformas Windows e Linux.', 1);

INSERT INTO professor (nome, especialidade, data_admissao)
VALUES
('Eduardo Nascimento', 'Tecnologia da Informação', '2023-01-15'),
('Matheus Michilino', 'Mecatrônica e Interfaces Robóticas', '2020-01-01'),
('Rafael Selvagio', 'Tecnologia da Informação', '2023-06-01'),
('Rafael Rizzi', 'Eng. Elétrica', '2022-01-01');

INSERT INTO turma (qtd_alunos, periodo, semestre)
VALUES
(35, 'Manhã', '2º Semestre'),
(35, 'Tarde', '2º Semestre'),
(18, 'Manhã', '2º Semestre'),
(20, 'Tarde', '4º Semestre'),
(20, 'Tarde', '1º Semestre'),
(36, 'Tarde', '2º Semestre');

INSERT INTO aula (id_professor, id_disciplina, id_turma, data_aula)
VALUES
(1, 2, 2, '2025-09-11'),
(2, 3, 1, '2025-09-22'),
(1, 2, 1, '2025-10-13'),
(2, 3, 2, '2025-10-15'),
(3, 1, 2, '2025-10-16'),
(1, 2, 1, '2025-11-01'),
(1, 2, 2, '2025-11-07');

INSERT INTO matricula (num_matricula, id_curso, id_turma)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1);
