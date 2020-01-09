FROM python:3.6
WORKDIR /usr/src/app
RUN apt-get update && apt-get upgrade && apt-get dist-upgrade
RUN apt-get clean && apt-get autoclean
RUN apt-get check
# install package
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/

## Clean up
RUN rm -rf ~/.cache/pip/ && rm -rf /var/lib/apt/lists/*
CMD [ "python3" ]
