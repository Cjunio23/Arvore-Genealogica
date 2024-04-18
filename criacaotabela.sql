CREATE TABLE casamento (
id INTEGER NOT NULL,
marido INTEGER NOT NULL,
esposa INTEGER NOT NULL,
dtini DATE NOT NULL,
dtfim DATE
);
ALTER TABLE casamento ADD CONSTRAINT casamento_pk PRIMARY KEY ( id );
CREATE TABLE pessoa (
cpf INTEGER NOT NULL,
nome VARCHAR2(20 CHAR) NOT NULL,
dn DATE NOT NULL,
pai INTEGER,
mae INTEGER,
id_casamento INTEGER
);
ALTER TABLE pessoa ADD CONSTRAINT pessoa_pk PRIMARY KEY ( cpf );
ALTER TABLE casamento
ADD CONSTRAINT casamento_pessoa_fk FOREIGN KEY ( marido )
REFERENCES pessoa ( cpf )
ON DELETE CASCADE;
ALTER TABLE casamento
ADD CONSTRAINT casamento_pessoa_fkv2 FOREIGN KEY ( esposa )
REFERENCES pessoa ( cpf )
ON DELETE CASCADE;
ALTER TABLE pessoa
ADD CONSTRAINT pessoa_casamento_fk FOREIGN KEY ( id_casamento )
REFERENCES casamento ( id )
ON DELETE CASCADE;
ALTER TABLE pessoa
ADD CONSTRAINT pessoa_pessoa_fk FOREIGN KEY ( pai )
REFERENCES pessoa ( cpf );
ALTER TABLE pessoa
ADD CONSTRAINT pessoa_pessoa_fkv2 FOREIGN KEY ( mae )
REFERENCES pessoa ( cpf )
