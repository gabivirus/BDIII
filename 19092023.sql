-- ex001
create table fornecedor (
  	n_for number(5) primary key,
    nome varchar2(15) not null,
    cpf varchar2(14) not null,
    vendas number(11,2) not null,
    lucro number(11,2) not null
);

-- 001
BEGIN
    INSERT INTO fornecedor VALUES(01, 'Lucio Aulas', '55599911155', 5800, 2000);
    INSERT INTO fornecedor VALUES(02, 'Robô do Pix', '01011100101', 10060, 3000);
    INSERT INTO fornecedor VALUES(03, 'João Basquete', '19832156799', 2000, 260);
    INSERT INTO fornecedor VALUES(04, 'Wallace Cor', '35745685221', 560, 128);
END;

-- 002
declare
	cursor c_aumVen is select * from fornecedor;
begin
	for v_aumVen in c_aumVen loop
		update fornecedor set vendas = vendas * 1.15 where n_for = v_aumVen.n_for;
	end loop;
end;

-- 003
DECLARE
	CURSOR c_forn IS SELECT * FROM fornecedor;
BEGIN
    FOR v_forn IN c_forn LOOP
    	IF v_forn.vendas > 6000 THEN
    		UPDATE fornecedor SET lucro = (vendas * 0.15) WHERE n_for = v_forn.n_for;
		ELSE
    		UPDATE fornecedor SET lucro = (vendas * 0.05) WHERE n_for = v_forn.n_for;
		END IF;
		DBMS_OUTPUT.PUT_LINE('Fornecedor: '|| v_forn.nome|| CHR(10)|| 'Vendas: '|| v_forn.vendas || CHR(10)|| 'Comissão: '|| v_forn.lucro|| CHR(10));
    END LOOP;
END;

SELECT * FROM fornecedor;

-- ex002
CREATE TABLE aluno(
    ra NUMBER(2) PRIMARY KEY,
    disciplina VARCHAR2(20) NOT NULL,
    media NUMBER(2, 1) NOT NULL,
    carga_hora NUMBER(3) NOT NULL,
    faltas NUMBER(3) NOT NULL,
    situacao VARCHAR2(15)
);

-- 001
BEGIN
    INSERT INTO aluno (ra, disciplina, media, carga_hora, faltas) VALUES(1, 'PLSQL', 8.5, 100, 10);
    INSERT INTO aluno (ra, disciplina, media, carga_hora, faltas) VALUES(2, 'SQL', 5, 100, 10);
    INSERT INTO aluno (ra, disciplina, media, carga_hora, faltas) VALUES(3, 'C++', 8, 100, 70);
    INSERT INTO aluno (ra, disciplina, media, carga_hora, faltas) VALUES(4, 'HTML', 2, 100, 10);
	INSERT INTO aluno (ra, disciplina, media, carga_hora, faltas) VALUES(5, 'JAVA', 2, 100, 70);
END;

-- 002
DECLARE
    CURSOR c_aluno IS SELECT * FROM aluno;
BEGIN
    FOR v_aluno IN c_aluno LOOP
    	IF v_aluno.media >= 7 AND v_aluno.faltas < (v_aluno.carga_hora * 0.25) THEN
    		UPDATE aluno SET situacao = 'Aprovado' WHERE ra = v_aluno.ra;
    		DBMS_OUTPUT.PUT_LINE('Aluno: '|| v_aluno.ra|| CHR(10)|| 'Situação: '|| v_aluno.situacao|| CHR(10));

		ELSIF v_aluno.media > 4.5 AND v_aluno.media < 6.9 AND v_aluno.faltas < (v_aluno.carga_hora * 0.25) THEN
    		UPDATE aluno SET situacao = 'Exame' WHERE ra = v_aluno.ra;
    		DBMS_OUTPUT.PUT_LINE('Aluno: '|| v_aluno.ra|| CHR(10)|| 'Situação: '|| v_aluno.situacao|| CHR(10));

        ELSE
    		UPDATE aluno SET situacao = 'Reprovado' WHERE ra = v_aluno.ra;
    		DBMS_OUTPUT.PUT_LINE('Aluno: '|| v_aluno.ra|| CHR(10)|| 'Situação: '|| v_aluno.situacao|| CHR(10));
		END IF;
	END LOOP;
END;

SELECT * FROM aluno;
