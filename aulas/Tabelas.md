# Comandos SQL para Criação, Modificação e Exclusão de Tabelas e Dados

## Criação de Tabela

O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados.

### Exemplo de Criação de Tabela

```sql
CREATE TABLE pessoas (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade_id INT
);
```

### Detalhamento

- **`CREATE TABLE pessoas`**: Cria uma tabela chamada `pessoas`.
- **`id INT PRIMARY KEY`**: Cria a coluna `id` do tipo inteiro (`INT`), que será a chave primária (`PRIMARY KEY`) da tabela, ou seja, cada valor nesta coluna deve ser único e não nulo.
- **`nome VARCHAR(100)`**: Cria a coluna `nome` do tipo texto, com um limite de 100 caracteres.
- **`idade INT`**: Cria a coluna `idade` do tipo inteiro.
- **`cidade_id INT`**: Cria a coluna `cidade_id` do tipo inteiro, que pode ser usada para referenciar uma cidade em outra tabela.

## Modificação de Tabela

O comando `ALTER TABLE` é utilizado para modificar a estrutura de uma tabela já existente.

### Adicionar uma Coluna

```sql
ALTER TABLE pessoas
ADD email VARCHAR(100);
```

### Detalhamento

- **`ALTER TABLE pessoas`**: Modifica a tabela `pessoas`.
- **`ADD email VARCHAR(100)`**: Adiciona uma nova coluna chamada `email`, do tipo texto com limite de 100 caracteres.

### Modificar uma Coluna

```sql
ALTER TABLE pessoas
MODIFY idade SMALLINT;
```

### Detalhamento

- **`MODIFY idade SMALLINT`**: Altera o tipo de dados da coluna `idade` para `SMALLINT`, que ocupa menos espaço que o tipo `INT`.

### Renomear uma Coluna

```sql
ALTER TABLE pessoas
RENAME COLUMN cidade_id TO cidade_id_fk;
```

### Detalhamento

- **`RENAME COLUMN cidade_id TO cidade_id_fk`**: Renomeia a coluna `cidade_id` para `cidade_id_fk`, indicando que é uma chave estrangeira.

## Exclusão de Tabela

O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados.

### Exemplo de Exclusão de Tabela

```sql
DROP TABLE pessoas;
```

### Detalhamento

- **`DROP TABLE pessoas`**: Exclui a tabela `pessoas` do banco de dados, apagando permanentemente todos os dados e a estrutura da tabela.

## Inserção de Dados

O comando `INSERT INTO` é utilizado para inserir dados em uma tabela.

### Exemplo de Inserção de Dados

```sql
INSERT INTO pessoas (id, nome, idade, cidade_id)
VALUES (1, 'João', 25, 2);
```

### Detalhamento

- **`INSERT INTO pessoas (id, nome, idade, cidade_id)`**: Especifica a tabela e as colunas onde os dados serão inseridos.
- **`VALUES (1, 'João', 25, 2)`**: Define os valores a serem inseridos nas colunas correspondentes.

## Modificação de Dados

O comando `UPDATE` é usado para modificar os dados existentes em uma tabela.

### Exemplo de Modificação de Dados

```sql
UPDATE pessoas
SET idade = 26
WHERE id = 1;
```

### Detalhamento

- **`UPDATE pessoas`**: Especifica a tabela onde os dados serão atualizados.
- **`SET idade = 26`**: Modifica o valor da coluna `idade` para 26.
- **`WHERE id = 1`**: Aplica a modificação apenas na linha onde o `id` seja igual a 1.

## Exclusão de Dados

O comando `DELETE` é utilizado para excluir dados de uma tabela.

### Exemplo de Exclusão de Dados

```sql
DELETE FROM pessoas
WHERE id = 1;
```

### Detalhamento

- **`DELETE FROM pessoas`**: Especifica a tabela de onde os dados serão excluídos.
- **`WHERE id = 1`**: Aplica a exclusão apenas na linha onde o `id` seja igual a 1. Sem a cláusula `WHERE`, todos os dados da tabela seriam excluídos.

## Conclusão

Esses comandos são fundamentais para a manipulação de tabelas e dados em SQL. Com o `CREATE TABLE`, você pode criar tabelas; com `ALTER TABLE`, pode modificar suas estruturas; com `INSERT INTO`, `UPDATE` e `DELETE`, pode adicionar, alterar ou excluir dados nas tabelas existentes; e com `DROP TABLE`, pode excluir tabelas inteiras.

---

