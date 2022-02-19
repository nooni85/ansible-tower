## Running
```
ansible-playbook playbook.yml -i inventories/dev/hosts -k -K -e 'configs/dev.yml' -e 'java_version=1.8'
```

```
docker build -t ansible .
docker run -t -i -v .:/ansible  ansible /bin/bash
```