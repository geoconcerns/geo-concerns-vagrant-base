# GeoConcerns Base Image
## A Base Image for the [GeoConcerns Vagrant environment](https://github.com/geoconcerns/geo-concerns-vagrant)

## Requirements

* [Packer](https://www.packer.io/)
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)

## Setup

1. `git clone https://github.com/geoconcerns/geo-concerns-base.git`
2. `cd geo-concerns-base`
3. `packer build geo-concerns-base.json`

You will now have a VirtualBox Image for the GeoConcerns environment within `output-virtualbox-iso`

## Environment

* Ubuntu 14.04 64-bit base machine

## Thanks

This project was developed and maintained by Princeton University Library, Stanford University Libraries, University of Alberta Libraries, Lafayette College Libraries, and the Project Hydra community.
