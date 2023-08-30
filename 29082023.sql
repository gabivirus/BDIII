CREATE TABLE aluno(
	ra NUMBER(2),
	disciplina VARCHAR(20),
    media NUMBER(2, 1),
    carga_hora NUMBER(3),
    faltas NUMBER(2),
    situacao VARCHAR(15)
);

INSERT INTO aluno VALUES(1, 'PLSQL', 8.5, 100, 10, NULL);
INSERT INTO aluno VALUES(2, 'SQL', 5, 100, 10, NULL);
INSERT INTO aluno VALUES(3, 'C++', 8, 100, 70, NULL);
INSERT INTO aluno VALUES(4, 'HTML', 2, 100, 10, NULL);
INSERT INTO aluno VALUES(5, 'JAVA', 2, 100, 70, NULL);

DECLARE
    ra_v NUMBER;
	disciplina_v VARCHAR(20);
    media_v NUMBER;
	faltas_v NUMBER;
	carga_v NUMBER;
BEGIN
    FOR counter IN 1..5 LOOP
        SELECT ra, disciplina, media, faltas, carga_hora INTO ra_v, disciplina_v, media_v, faltas_v, carga_v FROM aluno WHERE ra = counter;
        IF media_v >= 7 AND faltas_v < 25 THEN
            DBMS_OUTPUT.PUT_LINE(ra_v|| ' - '|| disciplina_v|| ' SITUAÇÃO: Aprovado!');
    	ELSIF media_v >= 4.5 OR media_v <= 6.9 AND faltas_v < 25 THEN
            DBMS_OUTPUT.PUT_LINE(ra_v|| ' - '|| disciplina_v|| ' SITUAÇÃO: Exame!');
    	ELSE
            DBMS_OUTPUT.PUT_LINE(ra_v|| ' - '|| disciplina_v|| ' SITUAÇÃO: Reprovado!');
    	END IF;
	END LOOP;
END;
