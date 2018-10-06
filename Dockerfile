
FROM ubuntu:xenial
LABEL maintainer="Akmal Rasool <AkmalRasool@gmail.com>"


RUN apt-get update && \
    apt-get install python-dev -y && \
    apt-get clean


RUN apt-get -qq update && apt-get -qq install -y curl ca-certificates --no-install-recommends && \
curl -sL https://nodejs.org/dist/v10.0.0/node-v10.10.0-linux-x64.tar.gz | tar xz --strip-components=1
    

RUN npm install -g serverless @angular/cli && \
    curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli

RUN npm --version




#WORKDIR /home/svrless
#CMD ["ng"]

