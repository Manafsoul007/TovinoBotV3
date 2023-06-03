FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY. /app/

RUN cd /
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY start.sh /start.sh
CMD ["python", "/start.sh"]

