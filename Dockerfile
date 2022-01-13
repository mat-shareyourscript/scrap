FROM python:3.10-alpine3.15

COPY . .

RUN apk update \
  && apk add --no-cache \
     gcc \
     libffi-dev \
     build-base \
  && pip install --no-cache-dir -r requirements.txt

#RUN crontab crontab

#CMD ["crond", "-f"]
CMD ["true"]
