#!/bin/bash

ansible-playbook playbook.yml -i inventories/dev/hosts -k -K -e 'configs/dev.yml'

if [ ! -z "$@" -a "$@" != " " ]; then
	$@
fi
