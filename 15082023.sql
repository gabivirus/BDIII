-- Estruturas de repetição

--LOOP
--<INSTRUÇÕES>
--EXIT [WHEN]
--END LOOP;

DECLARE
	V_CONTADOR NUMBER(2):= 1;
BEGIN
	LOOP
		DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
		V_CONTADOR := V_CONTADOR + 1;
		EXIT WHEN V_CONTADOR > 20;
	END LOOP;
END;


--WHILE

WHILE <CONDIÇÃO> LOOP
<INSTRUÇÕES>
END LOOP;

DECLARE
V_CONTADOR NUMBER(2):= 1;
BEGIN
WHILE V_CONTADOR <= 20 LOOP
DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
V_CONTADOR := V_CONTADOR + 1;
END LOOP;
END;

--FOR

FOR <CONTADOR> IN <INICIO..FIM> LOOP
<INSTRUÇÕES>
END LOOP;


BEGIN
FOR V_CONTADOR IN 1..20 LOOP
DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
END LOOP;
END;

-- Exercícios --

-- Ex001 - Tabuada:
-- Loop
DECLARE
	num NUMBER(2) := 0;
	raz NUMBER(2) := 0;
BEGIN
	LOOP
    	LOOP
    		DBMS_OUTPUT.PUT_LINE(num|| raz);
			DBMS_OUTPUT.PUT_LINE(num|| 'x'|| raz|| '='|| (num*raz));
			raz := raz + 1;
			EXIT WHEN raz > 10;
        END LOOP;
		num := num + 1;
		EXIT WHEN num = 10;
	END LOOP;
END;

-- For
BEGIN
	FOR num IN 0..10 LOOP
			DBMS_OUTPUT.PUT_LINE(CHR(10)|| 'Tabuada de '|| num);
    	FOR raz IN 0..10 LOOP
			DBMS_OUTPUT.PUT_LINE(num|| 'x'|| raz|| '='|| (num*raz));
        END LOOP;
    END LOOP;
END;

-- Ex002 - pares:
DECLARE
	num NUMBER(3) := 2;
BEGIN
	LOOP
    	DBMS_OUTPUT.PUT_LINE(num);
		num := num + 2;
		EXIT WHEN num > 100;
	END LOOP;
END;
	
-- Ex003 - média de idades
DECLARE
    ages NUMBER := 0;
	average NUMBER := 0;
	random_age NUMBER;
	counter NUMBER(1) := 1;
BEGIN
    LOOP
    	random_age := TRUNC(DBMS_RANDOM.VALUE(1, 100));
		DBMS_OUTPUT.PUT_LINE('Idade n°'|| counter|| ': '|| random_age);
		ages := ages + random_age;
		counter := counter + 1;
		EXIT WHEN counter > 5;
	END LOOP;
	average := ages / 5;
	DBMS_OUTPUT.PUT_LINE(CHR(10)|| 'A média de idades é: '|| TRUNC(average));
END;

-- Ex004 - impapar
DECLARE
    random_num NUMBER;
	counter NUMBER(2) := 0;
BEGIN
    FOR i IN 1..10 LOOP
        random_num := TRUNC(DBMS_RANDOM.VALUE(1, 101));
		DBMS_OUTPUT.PUT_LINE(random_num);
        IF MOD(random_num, 2) = 0 THEN
            counter := counter + 1;
		END IF;
    END LOOP;
	DBMS_OUTPUT.PUT_LINE('Foram '|| counter|| ' número(s) par(es)');
END;
