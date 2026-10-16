# Laboratório de Dados: Projeto Prático (Python / SQL / BI)
![Dashboard de Vendas](./dashboard.png)

Este repositório foi criado como um projeto para praticar dados e consolidar minhas habilidades fundamentais em análise de negócios, engenharia reversa de dados e automação com Python. Utilizando o dataset público do Olist (encontrado no Kaggle), construí um pipeline completo de ponta a ponta (End-to-End) para simular o dia a dia de um profissional de dados: desde a criação de um banco de dados robusto com arquivos .csv brutos até a entrega de um dashboard interativo.

---

## Tecnologias Utilizadas e Aprendizados:

### 1. Python (Ambiente de Ingestão e Engenharia)
Utilizado no VS Code com Python 3.13 para automatizar a carga de dados de arquivos CSV brutos diretamente para o banco de dados estruturado.
* Bibliotecas utilizadas: pandas e sqlalchemy / psycopg.
* O que foi feito:
  * Configuração do ambiente de desenvolvimento profissional integrado ao VS Code.
  * Tratamento de segurança de credenciais locais (resolução de conflitos de caracteres especiais em strings de conexão).
  * Automação de processos repetitivos por meio de loops para conversão em massa e transferência limpa dos arquivos CSV para um banco de dados onde o PostgreSQL pode acessar.

### 2. SQL & PostgreSQL (Modelagem e Regras de Negócio)
Utilizado via pgAdmin para explorar a integridade dos dados, validar os números e criar a camada de consumo ideal antes da etapa de visualização.
* O que foi feito:
  * Criação, gerenciamento e limpeza de bancos de dados relacionais locais.
  * Escrita de queries utilizando múltiplos operadores de junção (JOIN, INNER JOIN) para cruzar tabelas de dimensões e fatos.
  * Agregações completas com operadores matemáticos e de agrupamento (SUM, COUNT DISTINCT, AVG, GROUP BY, ORDER BY).
  * Criação de VIEWs (CREATE OR REPLACE VIEW): Pratiquei o conceito de otimização de performance em BI. Ao invés de carregar tabelas separadas para o Power BI, centralizei os dados relevantes em uma VIEW mestre estruturada no próprio banco SQL, economizando memória e processamento na ferramenta de visualização.

### 3. Power BI (Inteligência de Negócios e DAX)
Utilizado para transformar os dados tratados da VIEW SQL em um produto final visual, interativo e aderente às demandas de nível executivo.
* O que foi feito:
  * Conexão e integração direta via conector nativo do Power BI com o servidor local PostgreSQL (localhost).
  * Modelagem e Linguagem DAX: Criação de medidas calculadas aplicando boas práticas de mercado, como a função DIVIDE (tratamento de erros de divisão por zero) combinada com DISTINCTCOUNT e SUM.
  * Design Clean: Aplicação de conceitos de usabilidade e data-viz, organizando layouts enxutos, removendo poluição visual (linhas de grade e eixos redundantes), configurando filtros refinados (Top N Categorias) e utilizando tipografias e paletas de cores padrão do mercado corporativo.
  * Análise Temporal: Correção e tratamento de tipos de dados (conversão de texto para Data/Hora) para plotar gráficos de linhas fluidos, contínuos e cronológicos que exibem sazonalidade e tendências, além de mudar valores para moeda.

---

## Resultados Financeiros Validados no Projeto

Para garantir que o pipeline funcionou sem perdas ou corrupção de dados durante o trajeto, validei os números tanto nas queries do SQL quanto nas telas do Power BI:
* Faturamento Total Monitorado: R\$ 13,59 Milhões.
* Volume de Pedidos Únicos: Mais de 98,6 mil operações.
* Ticket Médio Geral: R\$ 137,75 por transação.
* Indicador de Logística: O frete representa em média 16,57% do valor do produto.

---

## Fonte dos dados

[Kaggle - Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

## Estrutura Física do Projeto no VS Code

```text
 projeto
  |-- dados/             <-- Arquivos brutos baixados do Kaggle (.csv)
  |-- csv_to_sqlDados.py <-- Script de automação e carga em Python
  |-- query.sql          <-- Códigos SQL para buscas de dados (Desafio 1)
  |-- query2.sql         <-- Códigos SQL para buscas de dados (Desafio 2)
  |-- query3.sql         <-- Códigos SQL para buscas de dados (Desafio 3)
  |-- query_view.sql     <-- Código SQL de criação da VIEW mestre no pgAdmin
  |-- dashboard.pbix     <-- Arquivo de desenvolvimento do Power BI Desktop
  |-- README.md          <-- Esta documentação explicativa
```
