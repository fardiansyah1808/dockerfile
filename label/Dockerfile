FROM alpine:3

LABEL "maintainer"="fardi" "email"="fardiansyah@ifca.co.id"
LABEL "company"="IFCA" "website"="www.ifca.co.id"
LABEL "description"="Dockerfile Label Example" 

RUN mkdir hello
RUN echo "hello world" > "hello/world.txt"

CMD cat "hello/world.txt"

