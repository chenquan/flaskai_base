FROM python:3.6
WORKDIR /usr/src/app
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get dist-upgrade -y && apt-get clean \
    && apt-get autoclean
# install package
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

## Clean up
#RUN rm -rf ~/.cache/pip/ && rm -rf /var/lib/apt/lists/*
CMD [ "python3" ]
