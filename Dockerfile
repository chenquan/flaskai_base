FROM python:3.6
RUN apt-get update && apt-get upgrade && apt-get dist-upgrade
RUN apt-get clean && sudo apt-get autoclean
RUN apt-get check
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python3" ]
