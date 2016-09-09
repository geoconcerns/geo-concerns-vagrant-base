# GeoConcerns Vagrant Base Box
## A Base Box for the [GeoConcerns Vagrant environment](https://github.com/geoconcerns/geo-concerns-vagrant)

## Requirements

* [Packer](https://www.packer.io/)
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)

## Setup

1. `git clone https://github.com/geoconcerns/geo-concerns-vagrant-base.git`
2. `cd geo-concerns-vagrant-base`
3. `packer build geo-concerns-vagrant-base.json`

You should now have a base Vagrant Box for the GeoConcerns environment packaged to `builds/virtualbox-ubuntu1404.box`

## Environment

* Ubuntu 14.04 64-bit ISO image

## Acceptance Testing

The GeoConcerns Vagrant Base Box currently supports acceptance testing the latest released Box using the [Beaker](https://github.com/puppetlabs/beaker) and [Serverspec](http://serverspec.org/) frameworks.

In order to execute these tasks one invokes the following:
1. `bundle install`
2. `bundle exec rspec spec/acceptance/`

## Thanks

This project was developed and maintained by Princeton University Library, Stanford University Libraries, University of Alberta Libraries, Lafayette College Libraries, and the Project Hydra community.
