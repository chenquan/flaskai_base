FROM python:3.6
WORKDIR /usr/src/app
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get dist-upgrade -y && apt-get clean \
    && apt-get autoremove && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rf ~/.cache/pip/* && rm -rf requirements.txt\
    && rm -rf /tmp
CMD [ "python3" ]
