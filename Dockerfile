
FROM node:8.12-alpine
LABEL maintainer="AKmal Rasool <AkmalRasool@gmail.com>"

RUN apt-get update && \
    apt-get install python-dev -y && \
    apt-get clean
RUN npm install -g serverless && \
    curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli


#Angular CLI
RUN npm install -g @angular/cli


#WORKDIR /home/svrless
#CMD ["sls", "--help"]

