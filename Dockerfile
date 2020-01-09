FROM python:3.6
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rf ~/.cache/pip/* && rm -rf requirements.txt \
    && rm -rf /tmp
CMD [ "python3" ]
