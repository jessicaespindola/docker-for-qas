FROM nginx
#cria uma imagem customizada a partir da imagem do enginex

LABEL maintainer = "jessicaespindoladasilva5@gmail.com"
#quem está mantendo este arquivo atraves do container

RUN apt-get update && apt-get install -y vim

COPY ./app /usr/share/nginx/html
#faz cópia de arquivos / Comando para empacotar a aplicação dentro da imagem

EXPOSE 80
#exposed apontando para a porta 80 que é padrão do index

CMD ["nginx", "-g", "daemon off;"]
#comando para que o index fique no ar