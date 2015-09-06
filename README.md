# packer-ubuntu

[![Build Status](https://img.shields.io/travis/uchida/packer-ubuntu.svg)](https://travis-ci.org/uchida/packer-ubuntu)
[![License](https://img.shields.io/github/license/uchida/packer-ubuntu.svg)](http://creativecommons.org/publicdomain/zero/1.0/deed)

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

## License

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")]
(http://creativecommons.org/publicdomain/zero/1.0/deed)

dedicated to public domain by [contributors](https://github.com/uchida/packer-ubuntu/graphs/contributors).

