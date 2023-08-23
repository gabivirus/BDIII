REM   Script: 22/2082023
REM   Fourth DBIII Session

INSERT INTO produto VALUES(1, 'Sabão', 3.78, 10);

INSERT INTO produto VALUES(2, 'Vela', 1.5, 100);

INSERT INTO produto VALUES(3, 'Carvão', 43, 8);

INSERT INTO produto VALUES(4, 'Bacon', 32.99, 16);

CREATE TABLE produto( 
    id_prod NUMBER(2) PRIMARY KEY, 
    ds_prod VARCHAR2(30) NOT NULL, 
    preco NUMBER(8, 2), 
    qtd NUMBER(8, 2) 
) 
 
INSERT INTO produto VALUES(1, 'Sabão', 3.78, 10);

INSERT INTO produto VALUES(2, 'Vela', 1.5, 100);

INSERT INTO produto VALUES(3, 'Carvão', 43, 8);

INSERT INTO produto VALUES(4, 'Bacon', 32.99, 16);

CREATE TABLE produto( 
    id_prod NUMBER(2) PRIMARY KEY, 
    ds_prod VARCHAR2(30) NOT NULL, 
    preco NUMBER(8, 2), 
    qtd NUMBER(8, 2) 
);

DECLARE 
	v_id NUMBER(2) := 1; 
	v_dsprod VARCHAR2(30); 
BEGIN 
	SELECT ds_prod INTO c_dsprod FROM produto WHERE id_prod = v_id; 
	DBMS_OUTPUT.PUT_LINE('Nome do produto: '|| v_dsprod); 
END: 

/

DECLARE 
	v_id NUMBER(2) := 1; 
	v_dsprod VARCHAR2(30); 
BEGIN 
	SELECT ds_prod INTO v_dsprod FROM produto WHERE id_prod = v_id; 
	DBMS_OUTPUT.PUT_LINE('Nome do produto: '|| v_dsprod); 
END;
/

DECLARE 
	v_id NUMBER(2) := 1; 
	v_dsprod VARCHAR2(30); 
BEGIN 
	SELECT ds_prod INTO c_dsprod FROM produto WHERE id_prod = v_id; 
	DBMS_OUTPUT.PUT_LINE('Nome do produto: '|| v_dsprod); 
END;
/

DECLARE 
	v_id NUMBER(2) := 1; 
	v_dsprod VARCHAR2(30); 
BEGIN 
	SELECT ds_prod INTO v_dsprod FROM produto WHERE id_prod = v_id; 
	DBMS_OUTPUT.PUT_LINE('Nome do produto: '|| v_dsprod); 
END;
/

SELECT * FROM produtos;

SELECT * FROM produto;

DECLARE 
	v_id NUMBER(2) := 5; 
	v_dsprod VARCHAR2(30) := 'Papel'; 
	v_preco NUMBER(8, 2) := 100; 
	v_qtd NUMBER(8, 2) := 1000; 
BEGIN 
	INSERT INTO produto VALUES(v_id, v_dsprod, v_preco, v_qtd); 
END;
/

DECLARE 
	v_id NUMBER(2) := 5; 
	v_dsprod VARCHAR2(30) := 'Papel'; 
	v_preco NUMBER(8, 2) := 100; 
	v_qtd NUMBER(8, 2) := 1000; 
BEGIN 
	INSERT INTO produto VALUES(v_id, v_dsprod, v_preco, v_qtd); 
END;
/

SELECT * FROM produto;

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	preco_unit := SELECT preco FROM produto WHERE id_prod = compra_id; 
	nome_prod := SELECT ds_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de: '|| nome_prod|| ' = '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	-- preco_unit := SELECT preco FROM produto WHERE id_prod = compra_id; 
	-- nome_prod := SELECT ds_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de: '|| nome_prod|| ' = '|| preco_unit); 
	SELECT preco * compra_qtd FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	v_id NUMBER(2) := 1; 
	v_dsprod VARCHAR2(30); 
BEGIN 
	SELECT ds_prod INTO v_dsprod FROM produto WHERE id_prod = v_id; 
	DBMS_OUTPUT.PUT_LINE('Nome do produto: '|| v_dsprod); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	preco_unit := SELECT preco INTO preco_unit FROM produto WHERE id_prod = compra_id; 
	nome_prod := SELECT ds_prod INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de: '|| nome_prod|| ' = '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	SELECT preco INTO preco_unit FROM produto WHERE id_prod = compra_id; 
	SELECT ds_prod INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de: '|| nome_prod|| ' = '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	SELECT preco INTO preco_unit FROM produto WHERE id_prod = compra_id; 
	SELECT ds_prod INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de '|| nome_prod|| ' : '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	SELECT preco INTO preco_unit FROM produto WHERE id_prod = compra_id; 
	SELECT ds_prod INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de '|| nome_prod|| ' : '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Quantidade: '|| compra_qtd); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 3; 
	compra_qtd NUMBER(8, 2) := 55; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
BEGIN 
	SELECT preco, ds_prod INTO preco_unit, nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de '|| nome_prod|| ' : '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Quantidade: '|| compra_qtd); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '|| (preco_unit * compra_qtd)); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 2; 
	compra_qtd NUMBER(8, 2) := 3; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
	total_pedido NUMBER := 0; 
    estoque NUMBER := 0; 
BEGIN 
	SELECT preco, ds_prod, qtd INTO preco_unit, nome_prod, estoque FROM produto WHERE id_prod = compra_id; 
	total_pedido := preco_unit * compra_qtd; 
	UPDATE produto SET qtd = qtd - compra_qtd; 
	-- SELECT estoque INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de '|| nome_prod|| ' : '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Quantidade: '		 || compra_qtd); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '	 || total_pedido); 
	DBMS_OUTPUT.PUT_LINE('Quantidade em estoque: '|| estoque); 
END;
/

DECLARE 
	compra_id NUMBER(2) := 2; 
	compra_qtd NUMBER(8, 2) := 3; 
	preco_unit NUMBER(8, 2) := 0; 
	nome_prod VARCHAR2(30) := ''; 
	total_pedido NUMBER := 0; 
    estoque NUMBER := 0; 
BEGIN 
	UPDATE produto SET qtd = qtd - compra_qtd; 
	SELECT preco, ds_prod, qtd INTO preco_unit, nome_prod, estoque FROM produto WHERE id_prod = compra_id; 
	total_pedido := preco_unit * compra_qtd; 
	-- SELECT estoque INTO nome_prod FROM produto WHERE id_prod = compra_id; 
	DBMS_OUTPUT.PUT_LINE('Valor unitário de '|| nome_prod|| ' : '|| preco_unit); 
	DBMS_OUTPUT.PUT_LINE('Quantidade: '		 || compra_qtd); 
	DBMS_OUTPUT.PUT_LINE('Valor total: '	 || total_pedido); 
	DBMS_OUTPUT.PUT_LINE('Quantidade em estoque: '|| estoque); 
END;
/

