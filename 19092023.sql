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
