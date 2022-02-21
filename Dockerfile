FROM fedora:latest

# ENV LANG en_US.UTF-8
# ENV LC_ALL en_US.UTF-8

# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*

# RUN yum check-update
# RUN yum install -y epel-release dnf
# RUN dnf check-update -y
RUN dnf install -y python3-pip python3-devel openssl-devel python3-libselinux gcc libffi-devel python3 wget
RUN dnf clean all

RUN pip3 install --upgrade pip; \
    pip3 install --upgrade virtualenv; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm; \
    pip3 install jmspath; \
    pip3 install requests; \
    python3 -m pip install ansible; \
    ansible-galaxy collection install azure.azcollection; \
    pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt

RUN pip install molecule ansible-core

RUN mkdir -p /ansible
WORKDIR /ansible