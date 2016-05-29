# Ansible Ntp Role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-apache2.svg)](https://travis-ci.org/weareinteractive/ansible-apache2)
[![Galaxy](http://img.shields.io/badge/galaxy-franklinkim.supervisor-blue.svg)](https://galaxy.ansible.com/list#/roles/1377)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-apache2.svg)](https://github.com/weareinteractive/ansible-apache2)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-apache2.svg)](https://github.com/weareinteractive/ansible-apache2)

> `ntp` is an [ansible](http://www.ansible.com) role which:
>
> * installs ntp
> * configures ntp

## Installation

Using `ansible-galaxy`:

```
$ ansible-galaxy install franklinkim.ntp
```

Using `requirements.yml`:

```
- src: franklinkim.ntp
```

Using `git`:

```
$ git clone https://github.com/weareinteractive/ansible-ntp.git franklinkim.ntp
```

## Dependencies

* Ansible 1.9

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```
# package name (version)
ntp_package: ntp
# list of server
ntp_servers:
 - 0.ubuntu.pool.ntp.org
 - 1.ubuntu.pool.ntp.org
 - 2.ubuntu.pool.ntp.org
 - 3.ubuntu.pool.ntp.org
 - ntp.ubuntu.com
# list of peer hosts (typically on the same network)
ntp_peers: []
# start on boot
ntp_service_enabled: yes
# current state: started, stopped
ntp_service_state: started
#  drift file
ntp_driftfile: /var/lib/ntp/ntp.drift
# stats dir
ntp_statsdir: /var/log/ntpstats/
```

## Handlers

These are the handlers that are defined in `handlers/main.yml`.

* `restart ntp`

## Example playbook

```
- host: all
  roles:
    - franklinkim.ntp
  vars:
    ntp_servers:
      - 0.de.pool.ntp.org
      - 1.de.pool.ntp.org
      - 3.de.pool.ntp.org
      - 4.de.pool.ntp.org
```

## Testing

```
$ git clone https://github.com/weareinteractive/ansible-ntp.git
$ cd ansible-ntp
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) We Are Interactive under the MIT license.
