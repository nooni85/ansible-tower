## Running
```
ansible-playbook playbook.yml -i inventories/dev/hosts -k -K -e 'configs/dev.yml'
```

```
docker build -t ansible .
docker run -v $PWD:/ansible-tower -it ansible /bin/bash
```