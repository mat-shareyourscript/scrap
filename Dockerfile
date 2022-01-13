FROM python:3.10-alpine3.15

COPY . .

RUN apk update \
  && apk add gcc \
  && pip install -r requirements.txt

#RUN crontab crontab

#CMD ["crond", "-f"]
CMD ["true"]
