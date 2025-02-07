# No Railway, clique em New Project → Deploy from GitHub Repo e selecione o repositório.
# Adicionar o banco de dados na aba Databases e usar as credenciais fornecidas pela Railway como variáveis de ambiente (HOST, USER, PASSWORD).
# Esperar a build ser concluída e acessar o serviço na URL gerada.


# Usa a imagem oficial do Odoo 18
FROM odoo:18.0

# Define as variáveis de ambiente (Railway usa env vars)
ENV HOST=${HOST}
ENV USER=${USER}
ENV PASSWORD=${PASSWORD}

# Cria diretórios necessários
RUN mkdir -p /mnt/extra-addons

# Expõe a porta padrão do Odoo
EXPOSE 8069

# Comando de inicialização
CMD ["odoo"]


