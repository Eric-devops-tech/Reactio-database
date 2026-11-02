-- REACTIO Sprint 1 - Oracle DML de demonstração
-- Os valores de senha_hash são marcadores fictícios, não hashes utilizáveis.

INSERT INTO usuario (id_usuario, email, senha_hash) VALUES
    (1, 'ana.exemplo@reactio.test', 'HASH_DEMO_NAO_UTILIZAVEL_001');
INSERT INTO usuario (id_usuario, email, senha_hash) VALUES
    (2, 'bruno.exemplo@reactio.test', 'HASH_DEMO_NAO_UTILIZAVEL_002');
INSERT INTO usuario (id_usuario, email, senha_hash) VALUES
    (3, 'caio.exemplo@reactio.test', 'HASH_DEMO_NAO_UTILIZAVEL_003');
INSERT INTO usuario (id_usuario, email, senha_hash) VALUES
    (4, 'duda.exemplo@reactio.test', 'HASH_DEMO_NAO_UTILIZAVEL_004');
INSERT INTO usuario (id_usuario, email, senha_hash) VALUES
    (5, 'elisa.exemplo@reactio.test', 'HASH_DEMO_NAO_UTILIZAVEL_005');

INSERT INTO pergunta (id_pergunta, enunciado, resposta_correta, explicacao) VALUES
    (1, 'Uma usina nuclear usa a energia liberada pela fissão para produzir calor e gerar eletricidade.', 'V',
     'Em uma usina nuclear, o calor da fissão é usado para produzir vapor, que aciona uma turbina ligada a um gerador.');
INSERT INTO pergunta (id_pergunta, enunciado, resposta_correta, explicacao) VALUES
    (2, 'Uma usina nuclear gera eletricidade por meio de uma explosão igual à de uma bomba nuclear.', 'F',
     'A reação em um reator é controlada e sustenta a produção de calor; uma usina não funciona por uma detonação nuclear.');
INSERT INTO pergunta (id_pergunta, enunciado, resposta_correta, explicacao) VALUES
    (3, 'Usinas nucleares contam com barreiras e sistemas para manter materiais radioativos isolados.', 'V',
     'O projeto de uma usina inclui múltiplas barreiras e sistemas de segurança. Isso reduz riscos, mas não significa risco zero.');
INSERT INTO pergunta (id_pergunta, enunciado, resposta_correta, explicacao) VALUES
    (4, 'A energia nuclear é usada somente para fins militares.', 'F',
     'A fissão nuclear também é usada para produzir eletricidade. Existem aplicações nucleares civis em outros setores, cada uma com usos e controles próprios.');
INSERT INTO pergunta (id_pergunta, enunciado, resposta_correta, explicacao) VALUES
    (5, 'A avaliação dos riscos de uma aplicação nuclear depende do contexto e das medidas de segurança adotadas.', 'V',
     'Os usos e riscos não são todos iguais. A avaliação depende da aplicação específica, das condições e dos controles de segurança.');

INSERT INTO fonte (id_fonte, titulo, instituicao, url) VALUES
    (1, 'Frequently Asked Questions About Radiation Protection', 'U.S. Nuclear Regulatory Commission',
     'https://www.nrc.gov/facilities-safety/radiation-protection/related-information/frequently-asked-questions');
INSERT INTO fonte (id_fonte, titulo, instituicao, url) VALUES
    (2, 'Nuclear Power Plant', 'U.S. Nuclear Regulatory Commission',
     'https://www.nrc.gov/education-regulatory-research/glossary/nuclear-power-plant');
INSERT INTO fonte (id_fonte, titulo, instituicao, url) VALUES
    (3, 'Backgrounder on Nuclear Reactor Risk', 'U.S. Nuclear Regulatory Commission',
     'https://www.nrc.gov/regulations-legislation/fact-sheets-brochures/backgrounder-on-nuclear-reactor-risk');
INSERT INTO fonte (id_fonte, titulo, instituicao, url) VALUES
    (4, 'What Is Nuclear Energy?', 'U.S. Nuclear Regulatory Commission',
     'https://www.nrc.gov/reading-rm/basic-ref/students/what-is-nuclear-energy');
INSERT INTO fonte (id_fonte, titulo, instituicao, url) VALUES
    (5, 'Nuclear', 'U.S. Department of Energy',
     'https://www.energy.gov/nuclear');

INSERT INTO pergunta_fonte (id_pergunta, id_fonte) VALUES (1, 2);
INSERT INTO pergunta_fonte (id_pergunta, id_fonte) VALUES (2, 1);
INSERT INTO pergunta_fonte (id_pergunta, id_fonte) VALUES (3, 3);
INSERT INTO pergunta_fonte (id_pergunta, id_fonte) VALUES (4, 5);
INSERT INTO pergunta_fonte (id_pergunta, id_fonte) VALUES (5, 3);

INSERT INTO tentativa (id_tentativa, id_usuario, id_pergunta, resposta_escolhida, respondido_em)
    VALUES (1, 1, 1, 'V', TIMESTAMP '2026-10-01 09:00:00 -03:00');
INSERT INTO tentativa (id_tentativa, id_usuario, id_pergunta, resposta_escolhida, respondido_em)
    VALUES (2, 1, 2, 'V', TIMESTAMP '2026-10-01 09:02:00 -03:00');
INSERT INTO tentativa (id_tentativa, id_usuario, id_pergunta, resposta_escolhida, respondido_em)
    VALUES (3, 2, 2, 'F', TIMESTAMP '2026-10-01 10:00:00 -03:00');
INSERT INTO tentativa (id_tentativa, id_usuario, id_pergunta, resposta_escolhida, respondido_em)
    VALUES (4, 3, 3, 'V', TIMESTAMP '2026-10-01 11:00:00 -03:00');
INSERT INTO tentativa (id_tentativa, id_usuario, id_pergunta, resposta_escolhida, respondido_em)
    VALUES (5, 4, 5, 'D', TIMESTAMP '2026-10-01 12:00:00 -03:00');

COMMIT;
