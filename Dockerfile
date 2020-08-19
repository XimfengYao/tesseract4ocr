FROM ubuntu
LABEL maintainer="Yaoxinfeng <yaoxf1@aliyun.com>"
RUN apt-get update
RUN apt install -y  tesseract-ocr
RUN apt install -y  libtesseract-dev
RUN  apt-get install -y  tesseract-ocr-all
RUN mkdir -p /home/tesseract
COPY ./ocr-server/ /home/tesseract/ocr-server/
RUN apt-get install -y nodejs && mkdir -p /home/wh/ocr
EXPOSE 8080
WORKDIR /home/tesseract
CMD node /home/tesseract/ocr-server/app.js
