REM   Script: 08082023
REM   Second BDIII Session


DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	END IF; 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	END IF; 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF 5 >= media and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	ELSE 
    	DBMS_OUTPUT.PUT_LINE(media); 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Aprovado'); 
	ELSIF media >= 5 and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || 'Reprovado'); 
	ELSE 
    	DBMS_OUTPUT.PUT_LINE(media); 
	END IF; 
 
END;
/

DECLARE 
	n1 NUMBER(2, 1) := 8.1; 
	n2 NUMBER(2, 1) := 5.0; 
	n3 NUMBER(2, 1) := 4.3; 
	n4 NUMBER(2, 1) := 9.8; 
 
	media NUMBER(2, 1):= ((n1+n2+n3+n4) / 4); 
 
BEGIN 
	IF media >= 7 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || ' Aprovado'); 
	ELSIF media >= 5 and media <= 6.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || ' Recuperação'); 
	ELSIF media <= 4.9 THEN 
    	DBMS_OUTPUT.PUT_LINE(media || ' Reprovado'); 
	ELSE 
    	DBMS_OUTPUT.PUT_LINE('Nota inválida'); 
	END IF; 
 
END;
/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| 'anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT_LINE('Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT_LINE('Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT_LINE('Você é idoso.'); 
	END IF; 
END;
/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| ' anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT('Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT('Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT('Você é idoso.'); 
	END IF; 
END;
/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| ' anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(8)|| ' Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(8)|| ' Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(8)|| ' Você é idoso.'); 
	END IF; 
END; 

/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| ' anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(7)|| ' Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(9)|| ' Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(6)|| ' Você é idoso.'); 
	END IF; 
END;
/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| ' anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(7)|| ' Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(7)|| ' Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(6)|| ' Você é idoso.'); 
	END IF; 
END;
/

DECLARE 
	age NUMBER(3) := 18; 
 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Você tem '|| age|| ' anos.'); 
	IF age < 18 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(7)|| ' Você é menor de idade.'); 
	ELSIF age >= 18 AND age <= 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(6)|| ' Você é adulto.'); 
	ELSIF age > 65 THEN 
    	DBMS_OUTPUT.PUT_LINE(CHR(6)|| ' Você é idoso.'); 
	END IF; 
END;
/

DECLARE 
    n1 NUMBER(2) := 5; 
    n2 NUMBER(2) := 11; 
    om CHAR(1) := '*'; 
 
BEGIN 
    IF n1=0 OR n2=0 AND om = '/' THEN 
    	DBMS_OUTPUT.PUT_LINE('Não é possível fazer divisão por zero.'); 
    ELSIF om = '+' THEN 
    	DBMS_OUTPUT.PUT_LINE(n1|| ' + '|| n2|| ' = '|| (n1+n2)); 
    ELSIF om = '-' THEN 
    	DBMS_OUTPUT.PUT_LINE(n1|| ' - '|| n2|| ' = '|| (n1-n2)); 
    ELSIF om = '*' THEN 
    	DBMS_OUTPUT.PUT_LINE(n1|| ' * '|| n2|| ' = '|| (n1*n2)); 
    ELSE 
    	DBMS_OUTPUT.PUT_LINE(n1|| ' / '|| n2|| ' = '|| (n1/n2)); 
    END IF; 
END;
/

DECLARE 
    num NUMBER(3) := 122; 
	--fun := MOD(num, 2); 
 
BEGIN 
    --DBMS_OUTPUT.NEW_LINE(fun); 
	IF MOD(num, 2) = 0 THEN 
    	DBMS_OUTPUT.PUT_LINE(num|| ' É par!'); 
	ELSE 
    	DBMS_OUTPUT.PUT_LINE(num|| ' É impar!'); 
	END IF; 
END;
/

