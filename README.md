# robinwl/packer-templates

Collection of [Packer](http://packer.io) templates for building [Vagrant](http://vagrantup.com) baseboxes.

## Baseboxes

https://vagrantcloud.com/robin

### VirtualBox

These baseboxes were all built using a Ubuntu 14.04 x86_64 host running VirtualBox 4.3.12, and have that format of Guest Extensions.

* centos-7.0-x86_64.json
* debian-6.0.10-amd64.json
* debian-7.6-amd64.json
* ubuntu-12.04-amd64.json
* ubuntu-14.04-amd64.json

## Build Your Own Boxes

First, install [Packer](http://packer.io).

```bash
git clone https://github.com/robinwl/packer-templates.git
cd packer-templates/packer
packer build debian-7.6-amd64.json
```

## License & Authors

These packer templates are based on
[Bento](https://github.com/opscode/bento) from [Chef](https://www.getchef.com/chef/).

```text
Copyright 2012-2014, Chef Software, Inc. (<legal@getchef.com>)
Copyright 2011-2012, Tim Dysinger (<tim@dysinger.net>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

