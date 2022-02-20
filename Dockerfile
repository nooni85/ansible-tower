FROM fedora:latest

RUN dnf -y update 
RUN dnf -y install procps ansible openssh-clients

RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
RUN cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys 
ADD docker/entrypoint.sh /usr/local/bin/entrypoint.sh

VOLUME /ansible

WORKDIR /ansible

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
