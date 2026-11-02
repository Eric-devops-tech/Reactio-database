-- REACTIO Sprint 1 - Consultas Oracle com JOIN

-- 1. Afirmações, explicações e referências utilizadas.
SELECT
    p.id_pergunta,
    p.enunciado,
    p.resposta_correta,
    p.explicacao,
    f.titulo AS fonte,
    f.instituicao,
    f.url
FROM pergunta p
JOIN pergunta_fonte pf ON pf.id_pergunta = p.id_pergunta
JOIN fonte f ON f.id_fonte = pf.id_fonte
ORDER BY p.id_pergunta, f.id_fonte;

-- 2. Histórico de respostas e indicação calculada de acerto.
SELECT
    u.email,
    p.id_pergunta,
    t.resposta_escolhida,
    p.resposta_correta,
    CASE
        WHEN t.resposta_escolhida = p.resposta_correta THEN 'CORRETA'
        ELSE 'INCORRETA'
    END AS resultado,
    t.respondido_em
FROM tentativa t
JOIN usuario u ON u.id_usuario = t.id_usuario
JOIN pergunta p ON p.id_pergunta = t.id_pergunta
ORDER BY t.respondido_em, u.email;
