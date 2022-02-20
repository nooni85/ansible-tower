## Docker build

```
docker build -t ansible .
docker run -it -v $PWD/ansible:/ansible ansible /bin/bash
```

## Ansible Running
```
ansible-playbook playbook.yml -i inventories/dev/hosts -k -K -e 'configs/dev.yml'
```