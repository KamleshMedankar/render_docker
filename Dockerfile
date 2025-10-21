# Use official MySQL image
FROM mysql:8.0

# (Optional) set default envs - you can override them on Render with env vars
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Copy optional init SQL scripts into the Docker entrypoint dir
# any .sql or .sh files placed here will be executed on first startup
COPY ./initdb/ /docker-entrypoint-initdb.d/

EXPOSE 3306
