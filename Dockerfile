# docker build -t percs-api-docs .
# docker run -it --rm --name percs-api-docs-build -v "$PWD":/usr/src/app -w /usr/src/app percs-api-docs mkdocs build

FROM python:3.10.4-bullseye

RUN apt-get update -y
RUN pip install mkdocs

EXPOSE 8000

WORKDIR /usr/src/app
