REM   Script: 01082023
REM   First DBIII Session

begin 
	dbms_output.put_line('Vascão') 
 
end;
/

begin 
	dbms_output.put_line('Vascão'); 
 
end;
/

declare 
	codigo number(3) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line(codigo); 
	dbms_output.put_line(nome);
/

declare 
	codigo number(3) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line(codigo); 
	dbms_output.put_line(nome); 
 
end;
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line(codigo); 
	dbms_output.put_line(nome); 
 
end;
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line('RM', codigo); 
	dbms_output.put_line('Nome do aluno:', nome); 
 
end; 
	
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line('RM'+ codigo); 
	dbms_output.put_line('Nome do aluno:'+ nome); 
 
end; 
	
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line('RM', codigo); 
	dbms_output.put_line('Nome do aluno:', nome); 
 
end; 
	
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line('RM'|| codigo); 
	dbms_output.put_line('Nome do aluno:'|| nome); 
 
end;
/

declare 
	codigo number(5) := 22257; 
	nome varchar(30) := 'Gabriel'; 
 
begin 
	dbms_output.put_line('RM '|| codigo); 
	dbms_output.put_line('Nome do aluno: '|| nome); 
 
end;
/

begin 
	dbms_output.put_line('V\nascão'); 
 
end;
/

