FROM python:3.10-alpine3.15

COPY . .

RUN pip install -r requirements.txt

RUN crontab crontab

CMD ["crond", "-f"]
