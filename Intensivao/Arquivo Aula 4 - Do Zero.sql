# ==== INTENSIVÃO DE SQL ==== #
# =====      AULA 4      ====== #


# ======================== PARTE 1 ===========================#
#===============  CRIAÇÃO e CONFIGURAÇÃO DO BD ===============#
#=============================================================#

-- O primeiro passo é CRIAR e CONFIGURAR o banco de dados 'hashtagidiomas'.

-- >



# ======================== PARTE 2 ===========================#
#===================  CRIAÇÃO DAS TABELAS ====================#
#=============================================================#

-- No nosso projeto, teremos que criar 3 tabelas: cursos, alunos e vendas.

/*
TABELA 1: cursos
•	id_curso
•	nome_curso
•	valor_curso
*/

-- >


/*
TABELA 2: alunos
•	id_aluno
•	nome_aluno
•	email
*/

-- >

/*
TABELA 3: vendas
•	id_venda
•	data_venda
•	id_curso
•	id_aluno
*/

-- >


# ======================== PARTE 3 ===========================#
#==============  ADICIONANDO VALORES NA TABELA ===============#
#=============================================================#

/*
TABELA 1: cursos

Adicione os valores abaixo na tabela de cursos

id_curso | nome_curso | valor_curso |
_____________________________________
1        | Inglês     | 1200        |
2        | Espanhol   | 1000        |
3        | Francês    | 900         |
*/

-- >

/*
TABELA 2: alunos

Adicione os valores abaixo na tabela de alunos

id_aluno | nome_aluno | email                  |
________________________________________________
1        | Eliane     | eliane@gmail.com       |
2        | João       | j.123@hotmail.com      |
3        | Pedro      | pedrinho@gmail.com    |
*/

-- >

/*
TABELA 3: vendas

Adicione os valores abaixo na tabela de vendas

id_venda | data_venda      | id_curso  | id_aluno |
__________________________________________________
1        | '2022-01-10'    | 1         | 1        |
2        | '2022-01-10'    | 2         | 1        |
3        | '2022-01-10'    | 3         | 1        |
4        | '2022-01-13'    | 1         | 2        |
5        | '2022-01-21'    | 2         | 3        |
*/

INSERT INTO vendas
VALUES
	(1, '2022-01-10', 1, 1),
    (2, '2022-01-10', 2, 1),
    (3, '2022-01-10', 3, 1),
    (4, '2022-01-13', 1, 2),
    (5, '2022-01-21', 2, 3);

SELECT * FROM vendas;


# ======================== PARTE 4 ===========================#
#==============  ATUALIZANDO VALORES NA TABELA ===============#
#=============================================================#

-- O valor do curso de Francês será reajustado de R$900 para R$750. Atualize o valor na tabela de cursos.

-- >


# ======================== PARTE 5 ===========================#
#===============  EXCLUINDO VALORES DA TABELA ================#
#=============================================================#

-- Selecione a tabela de vendas. A compra do cliente 'Pedro' (id_venda = 5) foi reembolsada e por isso ela deve ser excluída do controle de vendas.

-- >

# ======================== PARTE 5 ===========================#
#===========  EXCLUINDO TABELAS E BANCOS DE DADOS ============#
#=============================================================#

-- Exclua a tabela vendas e em seguida o banco de dados hashtagidiomas.

-- >
