
FROM node:10.10
LABEL maintainer="Akmal Rasool <AkmalRasool@gmail.com>"
WORKDIR /opt/
RUN apt-get update && \
    apt-get install python-dev -y && \
    apt-get clean
    
RUN npm install -g serverless && \
    curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli

RUN ng --version


#WORKDIR /home/svrless
CMD ["ng"]

