
FROM ubuntu:xenial
LABEL maintainer="Akmal Rasool <AkmalRasool@gmail.com>"
WORKDIR /opt/

RUN apt-get update && \
    apt-get install python-dev -y && \
    apt-get clean
    
RUN apt-get -qq update && apt-get -qq install -y curl ca-certificates --no-install-recommends && \
curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1
    
RUN npm install -g serverless && \
    curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli




#WORKDIR /home/svrless
#CMD ["ng"]

