FROM alpine
RUN apk add \
    inotify-tools \
    make \
    py3-pip
WORKDIR /mnt/app
COPY requirements.txt /mnt/app/requirements.txt
RUN pip3 install -U pip && pip3 install -r requirements.txt
CMD make watch
