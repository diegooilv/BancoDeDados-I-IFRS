# PostgreSQL

---

## Criação das Tabelas

```sql
-- Criando a tabela 'equipe' que armazena dados das equipes de corrida
CREATE TABLE equipe (
    idequipe SERIAL NOT NULL PRIMARY KEY,
    nomeequipe VARCHAR(50) NOT NULL,
    paisequipe VARCHAR(50),
    motorequipe VARCHAR(50)
);

-- Criando a tabela 'piloto' que armazena informações dos pilotos
CREATE TABLE piloto (
    idpiloto SERIAL NOT NULL PRIMARY KEY,
    nomepiloto VARCHAR(50) NOT NULL,
    datanascimento DATE,
    paispiloto VARCHAR(50),
    idequipe INT REFERENCES equipe(idequipe)  -- Relacionamento com equipe
);

-- Criando a tabela 'corrida' que armazena dados sobre as corridas
CREATE TABLE corrida (
    idcorrida SERIAL NOT NULL PRIMARY KEY,
    localcorrida VARCHAR(50) NOT NULL
);

-- Criando a tabela 'classificacao' que registra a classificação dos pilotos em cada corrida
CREATE TABLE classificacao (
    idclassificacao SERIAL NOT NULL PRIMARY KEY,
    idpiloto INT NOT NULL REFERENCES piloto(idpiloto),  -- Relacionamento com piloto
    idcorrida INT NOT NULL REFERENCES corrida(idcorrida),  -- Relacionamento com corrida
    posicaochegada INT
);
```

Estas tabelas foram criadas com tipos de dados específicos e chaves primárias (`PRIMARY KEY`) e estrangeiras (`REFERENCES`) para garantir a integridade referencial.

---

## Inserção de Dados

```sql
-- Inserindo dados de exemplo na tabela 'equipe'
INSERT INTO equipe (nomeequipe, paisequipe, motorequipe) VALUES 
('Red Racing', 'Alemanha', 'Motor-X'),
('Blue Racing', 'França', 'Motor-Y');

-- Inserindo dados de exemplo na tabela 'piloto'
INSERT INTO piloto (nomepiloto, datanascimento, paispiloto, idequipe) VALUES 
('Carlos Santos', '1995-04-10', 'Brasil', 1),
('Jean Dupont', '1988-06-20', 'França', 2);

-- Inserindo dados de exemplo na tabela 'corrida'
INSERT INTO corrida (localcorrida) VALUES 
('Interlagos'),
('Monaco');

-- Inserindo dados de exemplo na tabela 'classificacao'
INSERT INTO classificacao (idpiloto, idcorrida, posicaochegada) VALUES 
(1, 1, 1),
(2, 1, 2),
(1, 2, 3),
(2, 2, 1);
```

---

## Consultas Básicas

```sql
-- Selecionando todas as colunas de uma tabela
SELECT * FROM equipe;

-- Selecionando colunas específicas
SELECT nomepiloto, paispiloto FROM piloto;

-- Usando a cláusula WHERE para filtrar
SELECT * FROM piloto WHERE paispiloto = 'França';

-- Ordenação com ORDER BY
SELECT * FROM classificacao ORDER BY posicaochegada;
```

---

## Exemplos de JOIN entre Tabelas

```sql
-- INNER JOIN para combinar piloto com equipe
SELECT nomepiloto, nomeequipe
FROM piloto
JOIN equipe ON piloto.idequipe = equipe.idequipe;

-- LEFT JOIN para listar todas as equipes com ou sem pilotos
SELECT nomeequipe, nomepiloto
FROM equipe
LEFT JOIN piloto ON equipe.idequipe = piloto.idequipe;
```

---

## Funções Agregadas e Agrupamento

```sql
-- Contagem de pilotos por país
SELECT paispiloto, COUNT(*) AS numero_pilotos
FROM piloto
GROUP BY paispiloto;

-- Média de posição de chegada por piloto
SELECT nomepiloto, AVG(posicaochegada) AS media_posicao
FROM piloto
JOIN classificacao ON piloto.idpiloto = classificacao.idpiloto
GROUP BY nomepiloto;
```
## Operador `LIKE` para Pesquisas com Padrões

No PostgreSQL, o operador `LIKE` permite realizar buscas com padrões em colunas de texto, e usa caracteres curingas:

- `%`: representa zero ou mais caracteres.
- `_`: representa um único caractere.

Exemplos de uso:

```sql
-- Buscar por valores que começam com uma letra específica
SELECT * FROM equipe WHERE nomeequipe LIKE 'R%';

-- Buscar por valores que terminam com uma sequência específica
SELECT * FROM piloto WHERE nomepiloto LIKE '%santos';

-- Buscar por valores que contêm uma sequência específica em qualquer posição
SELECT * FROM equipe WHERE nomeequipe LIKE '%Racing%';

-- Usar o caractere sublinhado (_) para especificar posições exatas
SELECT * FROM equipe WHERE nomeequipe LIKE 'B_____';
```

Além disso, o operador `ILIKE` permite buscas insensíveis a maiúsculas e minúsculas. Por exemplo:

```sql
SELECT * FROM piloto WHERE nomepiloto ILIKE '%jean%';
```

---

## Atualização de Dados

```sql
-- Atualizando o país de uma equipe
UPDATE equipe SET paisequipe = 'EUA' WHERE nomeequipe = 'Red Racing';

-- Atualizando a posição de chegada de um piloto
UPDATE classificacao SET posicaochegada = 2 WHERE idclassificacao = 1;
```

---

## Exclusão de Dados

```sql
-- Deletando uma classificação específica
DELETE FROM classificacao WHERE idclassificacao = 4;

-- Deletando uma equipe sem registros relacionados (ou após exclusão em cascata)
DELETE FROM equipe WHERE nomeequipe = 'Blue Racing';
```

---

## Exclusão de Tabelas

```sql
-- Excluindo a tabela 'classificacao' (atenção: todos os dados serão perdidos)
DROP TABLE classificacao;

-- Excluindo todas as tabelas na ordem correta para evitar conflitos de chave estrangeira
DROP TABLE piloto;
DROP TABLE corrida;
DROP TABLE equipe;
```

---

### Veja o arquivo sql completo: [scriptautomobilistico.sql](scriptautomobilistico.sql)