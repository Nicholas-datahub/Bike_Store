# DBA Challenge - Bike Stores Inc

## Descrição do Projeto
Este projeto consiste na implementação de consultas SQL para análise e extração de métricas a partir da base de dados da empresa Bike Stores Inc. O foco principal é fornecer informações estratégicas para as equipes de Marketing e Comercial, utilizando técnicas como joins, agregações e filtros para respostas assertivas.

## Tecnologias e Ferramentas Utilizadas
- **Linguagem:** T-SQL (Transact-SQL) - SQL Server
- **Banco de Dados:** Microsoft SQL Server
- **Ferramentas de Desenvolvimento:** SQL Server Management Studio (SSMS)
- **Controle de Versão:** Git
- **Plataforma do Desafio:** [Coodesh](https://coodesh.com/)

## Estrutura do Repositório
- `/queries` - Contém os arquivos `.sql` com as consultas solicitadas no desafio.
- `.gitignore` - Configuração para ignorar arquivos temporários e ambientes locais.

## Como Clonar e Executar as Consultas

1. **Clone o repositório:**
   ```bash
   git clone <https://github.com/Nicholas-datahub/Bike_Store.git>
   cd <Bike_Store>

## Documentação de atividade

Durante o desenvolvimento das consultas, segui um fluxo de trabalho iterativo e baseado em hipóteses para garantir precisão e performance:

1. **Levantamento de Requisitos e Modelo de Dados**

   - Analisei o diagrama fornecido e validei cada tabela e relacionamento.
   - Hipótese: Relações principais se dão entre `orders`, `order_items`, `products`, `brands`, `stores`, `customers` e `staffs`.

2. **Desenvolvimento das Consultas**

   - **Clientes sem compras:** usei `LEFT JOIN` e filtro `IS NULL` para identificar ausência de `order_id`.
   - **Produtos não comprados:** mesma lógica aplicada em `products` + `order_items`.
   - **Estoques zerados:** combinei `LEFT JOIN` em `stocks` e `HAVING SUM(quantity) = 0` para abranger produtos sem registro e sem estoque.
   - **Vendas por marca e loja:** construí `INNER JOIN` em cadeia, somando `quantity` em `order_items` e agrupando por `brand_name` e `store_name`.
   - **Funcionários sem pedidos:** `LEFT JOIN` entre `staffs` e `orders`, filtrando `order_id IS NULL`.

---

*Desafio realizado por Nicholas-datahub (Lucas Nicholas Araújo Barbosa).*\
*Challenge by *[*Coodesh*](https://coodesh.com/)