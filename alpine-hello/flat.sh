docker build -t nalawi/nonflat .
docker history nalawi/nonflat:latest 
docker run -d --name flat_container nalawi/nonflat
docker export flat_container > flat.tar
ls -lrt 
cat flat.tar | docker import - nalawi/flat:latest
docker image ls
docker history nalawi/flat:latest 
