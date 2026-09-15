CREATE TABLE `ALUNO` (
  `id_aluno` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255),
  `idade` int
);

CREATE TABLE `CURSO` (
  `id_curso` int PRIMARY KEY,
  `nome_curso` varchar(255),
  `duracao` int
);

CREATE TABLE `PROFESSOR` (
  `id_professor` int PRIMARY KEY,
  `nome` varchar(255),
  `especialidade` varchar(255)
);

CREATE TABLE `MATRICULA` (
  `id_matricula` int PRIMARY KEY,
  `id_aluno` int,
  `id_curso` int,
  `id_professor` int,
  `data_matricula` date
);

ALTER TABLE `MATRICULA` ADD FOREIGN KEY (`id_aluno`) REFERENCES `ALUNO` (`id_aluno`);

ALTER TABLE `MATRICULA` ADD FOREIGN KEY (`id_curso`) REFERENCES `CURSO` (`id_curso`);

ALTER TABLE `MATRICULA` ADD FOREIGN KEY (`id_professor`) REFERENCES `PROFESSOR` (`id_professor`);
