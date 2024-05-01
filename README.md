# Docker pode viabilzar o ambiente local para você trabalhar exclusivamente no seu proprio ambiente sem se preocupar em impactar ou ser impactado por outras pessoas dentro da empresa.

📝 Docker só funciona no linux

📝 No Windows precisa do Hyper V ou wsl2

### https://docs.docker.com/engine/install/linux-postinstall/


📝 Pra executar um container eu preciso de uma imagem

📝docker run hello-world

-- hello-world é o nome da imagem


📝 Comandos

- docker ps -a (Mostra o container que foi ligado/desligado a x tempo)
- docker start id (iniciar novamente)
- docker rm(Remover um determinado container, pode remover tanto pelo id quanto pelo nome)
- docker images (Encontra todas as imagens que foram baixadas no ambiente docker)
- docker run nginx(servidor web, concorrente do apache... da pra hospedar aplicacoes node,...)
- docker exec (entrar dentro do container
- docker exec -it 8410c0ad49e2 bash
- docker stop 8410c0ad49e2 (Parar o container)
- docker run -p 8080:80 nginx (expor a porta)

http://localhost:8080/

CTRL + C (Mata o processo)

- docker run -p 8080:80 -d nginx (detesh )desatachado- coloca o container no ar deixando o terminal disponivel para executar os comandos

jessica.espindola@2xrllh3:~$ docker exec -it 614a3f2b5e8b bash
root@614a3f2b5e8b:/# ls -l  (ver toda a estrutura de pastas desse container


apt update (atualiza o sistema operacional do container)

apt install vim (editor de texto 

/usr/share/nginx/html# 

vim index.html

# Alterar o HTML

- i (tecla i - modo inserção/edição)

- esc

- shift :

- wq!  (sair)


jessica.espindola@2xrllh3:~/Docker/projects/docker-for-qas$ docker run -d -p 8080:80 -v /home/jessica.espindola/Docker/projects/docker-for-qas:/usr/share/nginx/html nginx
(Fiz um link apontando para esse diretório local como volume que aponta para a pasta de websites do enginex, consigo entao customizar o container e customizar todo o conteudo que quero exibir neste servidor


https://parodify.vercel.app/   (aplicação clone do spotify


# Como criar um container docker que vai empacotar essa aplicação para que tenhamos um ambiente de teste local funcionando só que no ambiente isolado para testes


pwd (o linux lista para você o diretório de execução, o diretório atual - /home/jessica.espindola/Docker/projects/docker-for-qas)



# Customizar nome do container

- docker run -d -p 8081:80 -v $(pwd)/app:/usr/share/nginx/html --name parodify-qa nginx

- docker build -t parodify . (o ponto é para o docker buscar um arquivo chamado dockerfile na raiz do projeto na qual eu estou executando o comando

jessica.espindola@2xrllh3:~/Docker/projects/docker-for-qas$ docker run -d -p 8082:80 --name parodify-web parodify
