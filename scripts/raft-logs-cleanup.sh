#!/bin/bash

cd /opt/AxxonSoft/RaFT/data/Nodes

find . -type f - name "*.gz" -mtime +3 -delete -print
find . -type f - name "*.dmp" -mtime +3 -delete -print
find . -type f - name "*.log" -mtime +3 -delete -print

cd /tmp

find . -maxdepth 1 -name "tmp.*" -type d -mtime +3 -print -exec rm -Rf {} \;

echo "All logs cleaned"




RUN git config --global url."https://${DEPLOY_AUTH}@git.bwg-io.site".insteadOf https://git.bwg-io.site && \
         echo "machine git.bwg-io.site login ${GITLAB_LOGIN} password ${GITLAB_TOKEN}" > ~/.netrc ; \
         mkdir -p /configs ;


RUN git config --global url."https://${DEPLOY_AUTH}@git.bwg-io.site".insteadOf https://git.bwg-io.site ;\
         echo "machine git.bwg-io.site login ${GITLAB_LOGIN} password ${GITLAB_TOKEN}" > ~/.netrc ; \
         mkdir -p /configs ;


|| true