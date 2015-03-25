# beaker-fog

A Plugin for [Beaker](https://github.com/puppetlabs/beaker), to add an additional hypervisor for libvirt.


## Example Nodeset for Beaker

```yaml
HOSTS:
  ubuntu-server-12042-x64:
    roles:
      - master
    platform: ubuntu-12.04-amd64
    user: 'vagrant'
    password: 'vagrant'
    hypervisor : libvirt
    qcow2: '/home/nibz/projects/pcci/nocloudprimaryubuntu.qcow2'
    private_key_file: '/home/nibz/sandbox/vagrant_private.key'
CONFIG:
  type: foss
```

# Usage

TBC
