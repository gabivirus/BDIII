CREATE TABLE classe(
    id_classe NUMBER(3) PRIMARY KEY,
    nome_classe VARCHAR(20) NOT NULL,
    local_vlasse VARCHAR(25) NOT NULL,
    lotacao NUMBER(2)
);

INSERT INTO classe VALUES(10, '3 Modular', '3 Andar', 5);
INSERT INTO classe VALUES(20, '2 Modular', '3 Andar', 5);
INSERT INTO classe VALUES(30, '1 Modular', '3 Andar', 5);

DECLARE
    id_classe_i NUMBER(3) := 10;
	lotacao_i NUMBER(2);
	full_e EXCEPTION;
BEGIN
    SELECT lotacao INTO lotacao_i FROM classe WHERE id_classe = id_classe_i;

    IF lotacao_i > 0 THEN
        lotacao_i := lotacao_i -1;
    	UPDATE classe SET lotacao = lotacao_i WHERE id_classe = id_classe_i;
		DBMS_OUTPUT.PUT_LINE('Vagas restantes: '|| lotacao_i);
	ELSE
        raise full_e;
    END IF;

	EXCEPTION
        WHEN full_e THEN DBMS_OUTPUT.PUT_LINE('Classe cheia!');
END;

SELECT * FROM classe;
