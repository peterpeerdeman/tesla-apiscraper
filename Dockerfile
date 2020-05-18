FROM python:3-slim

COPY srtm.py /srtm
WORKDIR /srtm
RUN python3 ./setup.py install

RUN pip3 install influxdb

WORKDIR /usr/src/app

CMD [ "python", "./apiscraper.py" ]
