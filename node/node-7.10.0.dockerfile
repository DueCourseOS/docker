FROM mhart/alpine-node:7.10.0

RUN apk add --no-cache --update \
bash \
curl \
git \
openssh-client \
tar \
&& touch ~/.profile \
&& curl -o- -L https://yarnpkg.com/install.sh | bash \
&& mkdir -p /root/.ssh && ssh-keyscan github.com >> /root/.ssh/known_hosts

ENV PATH "$PATH:/root/.yarn/bin"
