FROM mhart/alpine-node:6.10.3

RUN apk add --no-cache --update \
bash \
curl \
git \
openssh-client \
tar \
&& touch ~/.profile \
&& curl -o- -L https://yarnpkg.com/install.sh | bash

ENV PATH "$PATH:/root/.yarn/bin"
