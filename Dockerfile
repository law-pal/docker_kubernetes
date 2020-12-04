#pulls image
FROM python:stretch

LABEL maintainer='Lawrence'
LABEL date='12/3/2020'
LABEL description='Image for FLAKS app for deployment project'

#set work directory
COPY . /app
WORKDIR /app

#install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#sets entry point
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]