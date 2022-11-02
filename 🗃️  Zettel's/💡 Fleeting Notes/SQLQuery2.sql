-- Ex1
SELECT
	e.nome + ' trabalha para ' + d.nm_departamento + 
	' localizado na cidade ' + l.cidade + ' estado ' +
	COALESCE(l.estado, 'não tem') + ' país ' + p.nm_pais AS "Informações dos Empregados"
FROM 
	tb_empregado e
	INNER JOIN tb_departamento d ON e.id_departamento = d.id_departamento
	INNER JOIN tb_localizacao l ON d.id_localizacao = l.id_localizacao
	INNER JOIN tb_pais p ON l.id_pais = p.id_pais
ORDER BY
	1 ASC

-- Ex2
SELECT
	e.nome + e.sobrenome AS "Nome Completo"
FROM 
	tb_empregado e
WHERE
	LOWER(e.nome) LIKE 'e_____e%' AND
	e.id_departamento = 80 OR
	e.id_gerente = 148

--Ex3
SELECT 
	COALESCE(g.nome, 'Os acionistas') + ' gerencia ' + e.nome
FROM tb_empregado e
LEFT JOIN tb_empregado g ON g.id_empregado = e.id_gerente
ORDER BY
	g.nome DESC 

--EX4
SELECT
	e.sobrenome, 
	ROUND(DATEDIFF(dd, data_admissao, GETDATE()), 0) AS "Número de dias Trabalhados"
FROM 
	tb_empregado e
WHERE
	e.id_departamento = 80
	AND DATEDIFF(dd, e.data_admissao, GETDATE()) > 5000
