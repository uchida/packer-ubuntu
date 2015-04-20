# packer-ubuntu

packer template to build Ubuntu Server images

## Building Images

To build images, simply run:

```
$ git clone https://github.com/uchida/packer-ubuntu
$ cd packer-ubuntu
$ packer build template.json
```

If you want to build only virtualbox, vmware or qemu.

```
$ packer build -only=virtualbox-iso template.json
$ packer build -only=vmware-iso template.json
$ packer build -only=qemu template.json
```

