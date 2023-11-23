# ubuntu-kvm

## About

Simple KVM setup for Ubuntu 22.04 LTS.

In order to start, type:

```shell
mkdir -p ~/repos && cd ~/repos && git clone https://github.com/mikelogaciuk/ubuntu-kvm.git && cd ubuntu-kvm
```

Then generate all the needed directories:

```shell
rake generate:folders
```

Fetch cloud image and resize it to 30GB:

```shell
rake image:fetch
```

Generate SSH keys and link them to the project:
```shell
rake generate:ssh
```

Virsh:

```virsh
rake pool:create
```

## Init

To prototype the machine, type:

```shell
terraform init
terraform apply
```

## Setup

```shell
ssh ubuntu@192.168.122.89
```

```shell
ssh -t ubuntu@192.168.122.89 bash -l
```

## Check if machine is running

In order to check if cloud-init has done its job, type:

```shell
sudo tail -30 /var/log/cloud-init-output.log
```

## Teardown

In order to destroy everything, type:

```shell
terraform destroy

ssh-keygen -f "$HOME/.ssh/known_hosts" -R "192.168.122.89"
```
