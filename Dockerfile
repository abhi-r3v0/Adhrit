FROM python:bullseye

COPY ./ /app


EXPOSE 4200 5000

WORKDIR /app
USER root

RUN apt-get update && apt-get install -y sudo nodejs npm lsof default-jdk

RUN python adhrit/installer.py

CMD ["python", "run.py"]