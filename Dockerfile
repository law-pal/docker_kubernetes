#pulls base image
FROM  python:stretch

#set working directory
COPY . /app
WORKDIR /app

#install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#entry point
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]