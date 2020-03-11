#!/bin/sh

VMNAME="default"

if ! docker-machine ls | egrep $VMNAME > /dev/null; then 
    docker-machine create --driver virtualbox $VMNAME
    echo "Docker Machine $VMNAME created"
else
    echo "Docker Machine $VMNAME already exists, proceeding to check status"
fi

if VBoxManage showvminfo $VMNAME --machinereadable | egrep '^VMState="poweroff"$' > /dev/null; then 
    docker-machine start $VMNAME
    echo "Docker Machine $VMNAME started"
else
    echo "Docker Machine $VMNAME was already running, proceeding to associate VM with docker"
fi

docker-machine env $VMNAME
echo "Docker has been initialized to start with VM:$VMNAME"