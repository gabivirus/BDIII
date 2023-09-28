-- Question #1
DECLARE
    maxi NUMBER(3) := 110;
    vel NUMBER(3) := 100;
	adc NUMBER;
BEGIN
    IF (vel >= maxi) THEN
    adc := vel - maxi;
		DBMS_OUTPUT.PUT_LINE('O valor da multa é: R$'|| adc * 5);
    ELSE
		DBMS_OUTPUT.PUT_LINE('Não há multa');
	END IF;
END;


-- Question #2
CREATE TABLE contribuinte(
    id_cont NUMBER(1) PRIMARY KEY,
    nome_cont VARCHAR2(50) NOT NULL,
    sal_bruto NUMBER(4) NOT NULL,
    aliquota NUMBER,
    valor_desconto NUMBER,
    sal_liquido NUMBER
);

INSERT INTO contribuinte VALUES(1,'Antonio', 1500, NULL, NULL, NULL);
INSERT INTO contribuinte VALUES(2, 'Simone', 2000, NULL, NULL, NULL);
INSERT INTO contribuinte VALUES(3, 'Vanessa', 3000, NULL, NULL, NULL);
INSERT INTO contribuinte VALUES(4, 'Guilherme', 4000, NULL, NULL, NULL);
INSERT INTO contribuinte VALUES(5, 'Marco', 7000, NULL, NULL, NULL);

DECLARE
    CURSOR c_cont IS SELECT * FROM contribuinte;
	aliquota NUMBER;
	desconto NUMBER;
BEGIN
	FOR v_cont IN c_cont LOOP
        DBMS_OUTPUT.PUT_LINE(v_cont.sal_bruto - (v_cont.sal_bruto * aliquota));
		IF v_cont.sal_bruto >= 1637.12 AND v_cont.sal_bruto <= 2453.50 THEN
			aliquota := 0.075;
			desconto := v_cont.sal_bruto * aliquota;
			UPDATE contribuinte SET aliquota = 7.5 WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET valor_desconto = desconto WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET sal_liquido = (v_cont.sal_bruto - desconto) WHERE id_cont = v_cont.id_cont;

		ELSIF v_cont.sal_bruto >= 2453.51 AND v_cont.sal_bruto <= 3271.38 THEN
			aliquota := 0.15;
			desconto := v_cont.sal_bruto * aliquota;
			UPDATE contribuinte SET aliquota = 15 WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET valor_desconto = desconto WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET sal_liquido = (v_cont.sal_bruto - desconto) WHERE id_cont = v_cont.id_cont;

		ELSIF v_cont.sal_bruto >= 3271.39 AND v_cont.sal_bruto <= 4087.65 THEN
			aliquota := 0.225;
			desconto := v_cont.sal_bruto * aliquota;
			UPDATE contribuinte SET aliquota = 22.5 WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET valor_desconto = desconto WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET sal_liquido = (v_cont.sal_bruto - desconto) WHERE id_cont = v_cont.id_cont;

		ELSIF v_cont.sal_bruto >= 4087.65 THEN
			aliquota := 0.275;
			desconto := v_cont.sal_bruto * aliquota;
			UPDATE contribuinte SET aliquota = 27.5 WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET valor_desconto = desconto WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET sal_liquido = (v_cont.sal_bruto - desconto) WHERE id_cont = v_cont.id_cont;

		ELSE
			aliquota := 0;
            desconto := v_cont.sal_bruto * aliquota;
			UPDATE contribuinte SET aliquota = 0 WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET valor_desconto = desconto WHERE id_cont = v_cont.id_cont;
			UPDATE contribuinte SET sal_liquido = (v_cont.sal_bruto - desconto) WHERE id_cont = v_cont.id_cont;
		END IF;
	END LOOP;
END;

SELECT * FROM contribuinte;
