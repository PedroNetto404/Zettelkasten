USE master; 

CREATE DATABASE ExAula16; 

USE ExAula16; 

-- 1)
CREATE TABLE tb_categorias 
(
	id_categoria		INTEGER, 
	tituloCategoria		VARCHAR(100), 
	descricaoCategoria	VARCHAR(300), 
	fg_ativo			INTEGER, 

	CONSTRAINT pk_categorias_id_categoria PRIMARY KEY (id_categoria)
); 

CREATE TABLE tb_vendedores 
(
	id_vendedor			INTEGER, 
	cpf					VARCHAR(12), 
	carteiraTrabalho	VARCHAR(100), 
	telefone			VARCHAR(12), 
	dataAdmissao		DATE, 
	fg_ativo			INTEGER, 

	CONSTRAINT pk_vendedor_id_vendedor PRIMARY KEY (id_vendedor)
); 

CREATE TABLE tb_fornecedores	
(
	id_fornecedor			INTEGER, 
	cnpj					VARCHAR(14), 
	razaoSocial				VARCHAR(100), 
	telefone				VARCHAR(15), 
	endereco				VARCHAR(200), 
	contato					VARCHAR(100), 
	fg_ativo				INTEGER, 

	CONSTRAINT pk_tb_fornecedor_id_fornecedor PRIMARY KEY (id_fornecedor)
); 

CREATE TABLE tb_produtos 
(
	id_produto			INTEGER, 
	id_fornecedor		INTEGER, 
	id_categoria		INTEGER, 
	nomeProduto			VARCHAR(100), 
	descricaoProduto	VARCHAR(300), 
	valorUnitario		NUMERIC, 
	quantidade			INTEGER,
	quantidadeMinima	INTEGER, 
	fg_ativo			INTEGER, 

	CONSTRAINT pk_tb_produtos_id_produto PRIMARY KEY (id_produto), 
	CONSTRAINT fk_tb_produtos_id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES tb_fornecedores (id_fornecedor), 
	CONSTRAINT fk_tb_produtos_id_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria)
); 

CREATE TABLE tb_compras
(
	id_compra			INTEGER,
	id_fornecedor		INTEGER, 
	id_produto			INTEGER,
	id_categoria		INTEGER,
	dataCompra			DATE,
	valorTotal			NUMERIC, 
	quantidade			INTEGER,
	fg_ativo			INTEGER,

	CONSTRAINT pk_tb_compras_id_compra PRIMARY KEY (id_compra), 
	CONSTRAINT fk_tb_compras_id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES tb_fornecedores(id_fornecedor), 
	CONSTRAINT fk_tb_compras_id_produto FOREIGN KEY (id_produto) REFERENCES tb_produtos (id_produto), 
	CONSTRAINT fk_tb_compras_id_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria)
); 

CREATE TABLE tb_vendas 
(
	id_venda			INTEGER, 
	id_vendedor			INTEGER,
	id_categoria		INTEGER, 
	id_produto			INTEGER, 
	dataVenda			DATE, 
	valorTotal			NUMERIC,
	quantidade			INTEGER,
	fg_ativo			INTEGER,

	CONSTRAINT pk_tb_vendas_id_venda PRIMARY KEY (id_venda), 
	CONSTRAINT fk_tb_vendas_id_vendedor FOREIGN KEY (id_vendedor) REFERENCES tb_vendedores(id_vendedor),
	CONSTRAINT fk_tb_vendas_id_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria), 
	CONSTRAINT fk_tb_vendas_id_produto FOREIGN KEY (id_produto) REFERENCES tb_produtos (id_produto)
);

-- 2

INSERT INTO tb_categorias (id_categoria, tituloCategoria, descricaoCategoria, fg_ativo)
VALUES
(1, 'Brinquedos'				, 'Produtos infanto/juvenil'				, 1), 
(2, 'Bebês e Cia'				, 'Produtos para bebês'						, 1), 
(3, 'Casa e Decoração'			, 'Produtos para casa/lar'					, 1), 
(4, 'Colecionáveis'				, 'Produtos destinados para colecionadores'	, 1), 
(5, 'Construção e Ferramentas'	, 'Produtos para construção civil'			, 1)

SELECT *
FROM tb_categorias

INSERT INTO tb_fornecedores (id_fornecedor, cnpj, razaoSocial, telefone, endereco, contato, fg_ativo)
VALUES
(1, '01.123.456/0001-01', 'Nome da Empresa 1', '21 3456 7887', 'Av Nove de Julho, 1347', 'contato1@gmail.com', 1),
(2, '02.456.789', ''),
(3, ), 
(4, ), 
(5, )