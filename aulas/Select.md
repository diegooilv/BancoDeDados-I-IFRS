# Comando `SELECT` em SQL

```sql
SELECT nome, idade, cidade
FROM pessoas
WHERE idade > 18
ORDER BY nome ASC;
```

## Detalhamento do Comando

### 1. `SELECT nome, idade, cidade`
Seleciona as colunas `nome`, `idade` e `cidade` da tabela. Estas são as informações que serão retornadas pela consulta. Caso queira selecionar todas as colunas, pode-se usar o asterisco (`*`):

```sql
SELECT * FROM pessoas;
```

### 2. `FROM pessoas`
Define a tabela `pessoas` como a fonte dos dados. A consulta irá buscar os dados dessa tabela.

### 3. `WHERE idade > 18`
Filtra os resultados para que apenas as linhas onde a coluna `idade` seja maior que 18 sejam incluídas. A cláusula `WHERE` aplica uma condição aos dados que serão retornados.

### 4. `ORDER BY nome ASC`
Ordena os resultados pela coluna `nome`. A palavra-chave `ASC` indica ordem crescente. Se fosse necessário ordenar em ordem decrescente, usaria-se `DESC`.

---

# Comando `SELECT` com `JOIN`, `ON` e `GROUP BY` em SQL

```sql
SELECT p.nome, p.idade, c.cidade
FROM pessoas p
JOIN cidades c ON p.cidade_id = c.id
WHERE p.idade > 18
GROUP BY c.cidade
ORDER BY p.nome ASC;
```

## Detalhamento do Comando

### 1. `SELECT p.nome, p.idade, c.cidade`
Seleciona as colunas `nome` e `idade` da tabela `pessoas` (apelidada como `p`), e a coluna `cidade` da tabela `cidades` (apelidada como `c`). As tabelas são combinadas para que seja possível acessar dados de ambas.

### 2. `FROM pessoas p`
Especifica a tabela `pessoas` como a fonte principal dos dados. A tabela é apelidada como `p` para facilitar a referência a ela nas cláusulas subsequentes.

### 3. `JOIN cidades c ON p.cidade_id = c.id`
Realiza uma junção entre as tabelas `pessoas` e `cidades`. O `JOIN` permite combinar dados de duas ou mais tabelas com base em uma condição. A palavra-chave `ON` especifica a condição da junção. Neste caso, as tabelas são unidas onde o valor de `cidade_id` na tabela `pessoas` é igual ao valor de `id` na tabela `cidades`.

- **`JOIN`**: O tipo de junção usada (o padrão é o `INNER JOIN`, que retorna apenas os registros que têm correspondência em ambas as tabelas).
- **`ON p.cidade_id = c.id`**: Define a condição que une as duas tabelas, associando as pessoas à cidade correspondente.

### 4. `WHERE p.idade > 18`
Filtra os resultados para incluir apenas pessoas com idade superior a 18. A cláusula `WHERE` aplica condições sobre os dados antes de retornar os resultados.

### 5. `GROUP BY c.cidade`
Agrupa os resultados pela coluna `cidade`. A cláusula `GROUP BY` é usada para combinar linhas com valores iguais em uma coluna específica e retornar uma linha por grupo. No exemplo, isso pode ser útil para realizar funções agregadas como `COUNT()`, `SUM()`, `AVG()`, etc. (não usadas aqui, mas podem ser adicionadas).

- **`GROUP BY c.cidade`**: Agrupa as linhas de acordo com a cidade. Assim, o resultado será uma lista de cidades únicas em que as pessoas atendem à condição de idade.

### 6. `ORDER BY p.nome ASC`
Ordena os resultados pela coluna `nome` em ordem crescente (`ASC`). A cláusula `ORDER BY` pode ser usada para classificar os resultados de acordo com uma ou mais colunas. No exemplo, estamos ordenando por nome em ordem alfabética.

## Exemplo com Função Agregada

Caso queira contar o número de pessoas em cada cidade, a consulta pode ser modificada para incluir a função `COUNT()`:

```sql
SELECT c.cidade, COUNT(p.id) AS total_pessoas
FROM pessoas p
JOIN cidades c ON p.cidade_id = c.id
GROUP BY c.cidade
ORDER BY total_pessoas DESC;
```

Isso retornaria a quantidade de pessoas por cidade, ordenando do maior para o menor número de pessoas.

---