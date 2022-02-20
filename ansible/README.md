## Running
```
ansible-playbook playbook.yml -i inventories/dev/hosts -k -K -e 'configs/dev.yml'
```

```
docker build -t ansible .
docker run -t -i -v .:/ansible  ansible /bin/bash
```