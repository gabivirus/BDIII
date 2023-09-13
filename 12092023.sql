CREATE TABLE funcionario (
    fun_id NUMBER(1) PRIMARY KEY,
    fun_nome VARCHAR2(20) NOT NULL,
    salario NUMBER(10, 2) NOT NULL,
    data_adm DATE NOT NULL
);

INSERT INTO funcionario VALUES (1, 'Marcel', 10000, '17-apr-2000');
INSERT INTO funcionario VALUES (2, 'Claudia', 16000, '02-oct-1998');
INSERT INTO funcionario VALUES (3, 'Joaquim', 5500, '10-jul-2010');
INSERT INTO funcionario VALUES (4, 'Valéria', 7300, '08-jun-2015');


-- Exercícios
-- Ex001:
ALTER TABLE funcionario ADD tempo NUMBER(10);

DECLARE
    CURSOR c_func IS SELECT * FROM funcionario;
BEGIN
    FOR v_func IN c_func LOOP
    	UPDATE funcionario SET tempo = TRUNC(SYSDATE - data_adm) WHERE fun_id = v_func.fun_id;
    	DBMS_OUTPUT.PUT_LINE('Nome: '||v_func.fun_nome||' - Tempo de trabalho: '|| TRUNC(SYSDATE - v_func.data_adm));
	END LOOP;
END;

-- Ex002:
DECLARE
    CURSOR c_func IS SELECT * FROM funcionario;
	meses NUMBER;
BEGIN
    FOR v_func IN c_func LOOP
    	meses := v_func.tempo / 30;
    	IF meses >= 150 THEN
    		DBMS_OUTPUT.PUT_LINE('Nome: '||v_func.fun_nome||' - Meses de trabalho: '|| TRUNC(meses)||' - Novo Salário: '|| (v_func.salario + (v_func.salario*0.1)));
			DBMS_OUTPUT.PUT_LINE('Aumento de 10%'|| CHR(10));
    		UPDATE funcionario SET salario = salario + (salario*0.1) WHERE fun_id = v_func.fun_id;
		ELSE
    		DBMS_OUTPUT.PUT_LINE('Nome: '||v_func.fun_nome||' - Meses de trabalho: '|| TRUNC(meses)||' - Novo Salário: '|| (v_func.salario + (v_func.salario*0.05)));
			DBMS_OUTPUT.PUT_LINE('Aumento de 5%'|| CHR(10));
    		UPDATE funcionario SET salario = salario + (salario*0.05) WHERE fun_id = v_func.fun_id;
		END IF;
	END LOOP;
END;

SELECT * FROM funcionario;
