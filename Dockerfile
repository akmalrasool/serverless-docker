
FROM node:8.10
LABEL maintainer="Akmal Rasool <AkmalRasool@gmail.com>"

RUN apt-get update && \
    apt-get install python-dev -y && \
    apt-get clean \
    && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
    && npm cache verify \
    && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
    
RUN npm install -g serverless @angular/cli && \
    curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli


#WORKDIR /home/svrless
#CMD ["sls", "--help"]

