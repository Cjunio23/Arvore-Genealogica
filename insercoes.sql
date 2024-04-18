INSERT ALL
--Avós
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (1,
'Regina', '01/01/1971', null, null, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (2,
'KEN', '01/01/1972', null, null, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (3,
'LAURA', '01/01/1973', null, null, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (4,
'JOHN', '01/01/1974', null, null, null)
--Pais
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (5,
'TINA', '01/01/2001', null, null, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (6,
'ADAM', '02/01/2002', 2, 1, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (7,
'EVA', '03/01/2003', 2, 1, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (8,
'TOMAS', '04/01/2004', 4, 3, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (9,
'CATY', '05/01/2005', 4, 3, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (10,
'SEAN', '06/01/2006', null, null, null)
--Filhos
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (11,
'Jonas' , '01/01/2010', 6, 5, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (12,
'Charlie', '02/01/2012', 8, 7, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (13,
'Addison', '03/01/2013', 8, 7, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (14,
'Dixe' , '04/01/2019', 8, 7, null)
INTO pessoa (cpf, nome, dn, pai, mae, id_casamento) VALUES (15,
'George' , '05/01/2018', 10, 9, null)
SELECT * FROM DUAL;
--Visualizar pessoas inseridas
SELECT * from pessoa;
-- Inserir casamentos
INSERT ALL
--avós
INTO casamento (id, marido, esposa, dtini, dtfim) VALUES (1, 2, 1,
'01/01/1991', null)
INTO casamento (id, marido, esposa, dtini, dtfim) VALUES (2, 4, 3,
'01/01/1995', null)
--pais
INTO casamento (id, marido, esposa, dtini, dtfim) VALUES (3, 6, 5,
'01/05/2004', null)
INTO casamento (id, marido, esposa, dtini, dtfim) VALUES (4, 8, 7,
'01/04/2005', null)
INTO casamento (id, marido, esposa, dtini, dtfim) VALUES (5, 10, 9,
'01/03/2006', null)
SELECT * FROM DUAL;
--Visualizar casamento inseridas
SELECT * from casamento;
-- Updates para adicionar os casamentos
UPDATE pessoa SET id_casamento = 1
WHERE cpf in (1, 2);
UPDATE pessoa SET id_casamento = 2
WHERE cpf in (3, 4);
UPDATE pessoa SET id_casamento = 3
WHERE cpf in (5, 6);
UPDATE pessoa SET id_casamento = 4
WHERE cpf in (7, 8);
UPDATE pessoa SET id_casamento = 5
WHERE cpf in (9, 10)
