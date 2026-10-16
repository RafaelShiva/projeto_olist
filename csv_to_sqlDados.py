import os
import pandas as pd
from sqlalchemy import create_engine

USER = "********" # user para acessar o postgsql
PASSWORD = "********" #senha para acessar o postgsql
HOST = "localhost"
PORT = "****"
DATABASE = "projeto_olist"

engine = create_engine(
    f"postgresql://{HOST}:{PORT}/{DATABASE}",
    connect_args={
        "user": USER,
        "password": PASSWORD
    }
)

dados_kaggle = "./dados"

print("Iniciando a transferencia de dados para o PostgreSQL....")

for arquivo in os.listdir(dados_kaggle):
    if arquivo.endswith(".csv"): #busca os arquivos .csv
        caminho_completo = os.path.join(dados_kaggle, arquivo)
        nome_tabela = arquivo.replace(".csv","").replace("_dataset","")

        print(f"Carregando{arquivo} para a tabela'{nome_tabela}'....")


        df = pd.read_csv(caminho_completo)

        df.to_sql(nome_tabela, engine, if_exists="replace", index=False)


print("Todas as tabelas foram importadas")