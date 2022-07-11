<p align="center">
  <a href="https://www.dyne.org">
    <img alt="Devuan Pi Gadgeteer" src="/public/logo.png" width="150" />
  </a>
</p>

<h1 align="center">
  Devuan Pi Gadgeteer</br>
  <sub></sub>
</h1>

<p align="center">
  <a href="https://dyne.org">
    <img src="https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%9D%A4%20by-Dyne.org-blue.svg" alt="Dyne.org">
  </a>
</p>

<br><br>

<h4 align="center">
  <a href="#-prepare">📝 Prepare</a>
  <span> • </span>
  <a href="#-install">💾 Install</a>
  <span> • </span>
  <a href="#-quick-start">🎮 Quick start</a>
  <span> • </span>
  <a href="#-links">🌐 Links</a>
  <span> • </span>
  <a href="#-contributing">👤 Contributing</a>
  <span> • </span>
  <a href="#-license">💼 License</a>
</h4>


**Work in progress** 🚧: 

Devuan Pi Gadgeteer is an ansible script to enable compatible Raspberry Pi hardware models running Devuan Pi to act as USB Devices when connected to a host or laptop.

This repository should be cloned on a local provisioning machine, not on the device to be provisioned (this may work, but has not been tested).

Currently the script enables a compatible Devuan Pi to present itself to a USB host as:

- a USB 10G mass storage gadget

- network adapter gadgets (ECM & RNDIS adapters)

(more coming soon)

** Raspberry Pi Hardware Compatibility **

This script installs the dwc2 Device Tree overlay module, which is functional and tested on:

- Raspberry Pi 4
- Raspberry Pi Zero W
- Raspberry Pi Zero 2 W

This script is known not to work on the following models (as hardware/internal wiring is incompatible).

- Raspberry Pi 2 
- Raspberry Pi 3


USB Host functionality has been tested as functional on:

- Windows 10
- Fedora 35 Linux



<details id="toc">
 <summary><strong>🚩 Table of Contents</strong> (click to expand)</summary>

* [Prepare](#-prepare)
* [Install](#-install)
* [Quick start](#-quick-start)
* [Links](#-links)
* [Contributing](#-contributing)
* [License](#-license)
</details>

***
##  📝 Prepare

- Install Devuan Pi on a compatible Raspberry Pi from latest nightly builds for Devuan Pi, available on the [Devuan ARM images site](https://arm-files.devuan.org/RaspberryPi%20Latest%20Builds/). Download & install the correct image for your hardware (Devuan Daedalus release recommended).

- Configure the freshly installed Devuan Pi with a wireless network (as root):

```

sudo su -
menu-config

```

When the device is connected to the wireless network, take note of its IP address as it may be needed for if multicast DNS is not detected. 

***
## 💾 Install

Once the Devuan Pi is connected to the local network, with the issuing the following on the provisioning host starts the install process:

```

make play


```

By default, Devuan Pi installs have a hostname configured as devuanpi. If the ansible script errors complaining it cannot find the device, edit the file `hosts.yml` and replace the hostname devuanpi.local with the IP address of the Pi to be provisioned.

***
## 🎮 Quick start

- Power down the provisioned Pi and disconnect the Pi power supply.

- Connect a USB cable to the the Pi USB power supply USB port.

- Connect the other end of the USB cable to a host computer.

With power now supplied by the host computer, the Devuan Pi will boot and expose storage and network devices to the host.



***
**[🔝 back to top](#toc)**


## 😍 Acknowledgements

[![software by Dyne.org](https://files.dyne.org/software_by_dyne.png)](http://www.dyne.org)

Copyleft (ɔ) 2022 by [Dyne.org](https://www.dyne.org) foundation, Amsterdam

Designed, written and maintained by Adam Burns.

**[🔝 back to top](#toc)**

***
## 🌐 Links



**[🔝 back to top](#toc)**

***
## 👤 Contributing

Please first take a look at the [Dyne.org - Contributor License Agreement](CONTRIBUTING.md) then

1.  🔀 [FORK IT](../../fork)
2.  Create your feature branch `git checkout -b feature/branch`
3.  Commit your changes `git commit -am 'Add some fooBar'`
4.  Push to the branch `git push origin feature/branch`
5.  Create a new Pull Request
6.  🙏 Thank you


**[🔝 back to top](#toc)**

***
## 💼 License
    Devuan Pi Gadgeteer - 
    Copyleft (ɔ) 2021 Dyne.org foundation, Amsterdam

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

**[🔝 back to top](#toc)**
