# 📊 Análise de Vendas com SQL — KPIs Essenciais para E-commerce

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)
![Language](https://img.shields.io/badge/Linguagem-SQL-blue?style=for-the-badge)
![Analytics](https://img.shields.io/badge/Análise%20de%20Dados-E--commerce-blueviolet?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=for-the-badge)

---

## 📘 Descrição
Este projeto apresenta uma análise completa de vendas utilizando SQL, com foco em KPIs essenciais para tomada de decisão em negócios digitais.  
O objetivo é demonstrar domínio de consultas SQL, agregações, joins, funções de data e construção de indicadores de desempenho.

---

## 🗂️ Dataset
O dataset contém informações de pedidos, incluindo:

- order_id  
- order_date  
- customer_id  
- product_category  
- region  
- payment_method  
- quantity  
- unit_price  
- discount  
- delivery_days  
- customer_rating  
- revenue  

---

## 🎯 Objetivos
- Construir KPIs essenciais de vendas  
- Explorar comportamento por categoria, região e tempo  
- Identificar padrões de receita, quantidade e ticket médio  
- Avaliar impacto de descontos  
- Criar base para dashboard em Power BI

---

## 📊 KPIs Desenvolvidos

### 🔹 Receita
- Receita total  
- Receita por categoria  
- Receita por região  
- Receita por método de pagamento  
- Receita por dia da semana  
- Receita por mês  
- Receita por trimestre  
- Receita por ano  
- Receita por dia do mês  
- Receita por categoria × região  

### 🔹 Quantidade
- Quantidade total vendida  
- Quantidade por categoria  
- Quantidade por região  
- Quantidade por mês  

### 🔹 Ticket Médio
- Ticket médio geral  
- Ticket médio por categoria  
- Ticket médio por região  
- Ticket médio por mês  
- Ticket médio por categoria × região  

### 🔹 Desconto
- Impacto do desconto por categoria  
- Impacto do desconto por região  

---

## 📁 Estrutura do Projeto

### 🗂️ SQL (consultas organizadas por etapas)

1. **Verificação inicial da tabela**  
   [`01_verificacao_inicial.sql`](sql/01_verificacao_inicial.sql)

2. **Criação e organização do schema**  
   [`02_schema.sql`](sql/02_schema.sql)

3. **Criação das tabelas de dimensão**  
   [`03_dimensoes.sql`](sql/03_dimensoes.sql)

4. **Criação da tabela fato**  
   [`04_fato.sql`](sql/04_fato.sql)

5. **Inserção de dados nas tabelas**  
   [`05_insercoes.sql`](sql/05_insercoes.sql)

6. **Validações e verificações**  
   [`06_validacoes.sql`](sql/06_validacoes.sql)

7. **KPIs e análises de vendas**  
   [`07_kpis.sql`](sql/07_kpis.sql)

---

## 🧠 Principais Insights
(Serão adicionados após criação do dashboard)

---

## 🛠️ Tecnologias Utilizadas
- SQL Server  
- GitHub  
- Power BI  
