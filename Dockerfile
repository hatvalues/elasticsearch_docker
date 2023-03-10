FROM python:3.8.0
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app
RUN mkdir logs
RUN mkdir /temp/
COPY . .
ENTRYPOINT ["sh","./gunicorn_starter.sh"]