# No Railway, clique em New Project → Deploy from GitHub Repo e selecione o repositório.
# Adicionar o banco de dados na aba Databases e usar as credenciais fornecidas pela Railway como variáveis de ambiente (HOST, USER, PASSWORD).
# Esperar a build ser concluída e acessar o serviço na URL gerada.


# Usa a imagem oficial do Odoo 18
FROM odoo:18.0

# Instala dependências adicionais (opcional)
RUN apt-get update && apt-get install -y \
    postgresql-client

# Define as variáveis de ambiente do banco de dados
ENV HOST=postgres
ENV USER=odoo
ENV PASSWORD=My-503501
ENV POSTGRES_DB=Empresa_Odoo2025

# Cria diretórios necessários
RUN mkdir -p /mnt/extra-addons

# Expõe a porta padrão do Odoo
EXPOSE 8069

# Comando de inicialização
CMD ["odoo"]

