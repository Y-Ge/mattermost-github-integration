FROM python:3.7-alpine3.7

COPY ./requirements.txt /opt/app/requirements.txt
# for Pillow: jpeg-dev zlib-dev
RUN apk add --no-cache --virtual .build-deps g++ jpeg-dev zlib-dev \
    && pip install -qr /opt/app/requirements.txt \
    && apk del .build-deps

COPY ./mattermostgithub /opt/app/src
WORKDIR /opt/app/src

CMD ["gunicorn", "-w=2", "-b=0.0.0.0:8080", "server:app"]

LABEL base_image="python:3.7-alpine3.7"
