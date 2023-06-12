FROM python:3.11.2-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Update system and install base dependencies 
RUN apt-get update && apt-get -y install gcc \
  # Network utilities
  netcat \
  # Database dependencies
  postgresql \
  # Cleaning
  && apt-get clean

# install python dependencies
RUN pip install --upgrade pip
COPY ./requirements ./requirements
RUN pip install -r requirements/base.txt

COPY ./entrypoint.sh .

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]