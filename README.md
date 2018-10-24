An ansible playbook to install/configure  Grafana/Influx/Telegraf/Chronograf/ser2net on my Raspberry PI
===========================================================

This setup uses [Ansible](http://docs.ansible.com) to automate provisioning of a Raspberry machine
and install several softwares on it.


Note that this is a **work in progress** document and is aimed for my own setup.

## Bootstrap SD card with Raspbian

If you need to flash a new Raspbian image to an SD.
* Download: the Lite version of Raspbian
* Use Etcher to transfer to SD-card
* In File Explorer add a file with the name `ssh` (no extention)
* In File Explorer add a file `wpa_supplicant.conf`, it should contain the following:
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
network={
    ssid="YOUR_NETWORK_NAME"
    psk="YOUR_PASSWORD"
    key_mgmt=WPA-PSK
}
```
* hostname if needed, timezone and locales
* Move SD to RPi and boot it up. Wait until installation is done. Probably 45-60 min.

## Boot a Vagrant box to be able to use Ansible (optional if you already can run Ansible somewhere)
* Clone this repo from the command line (in a directory of your choice):
   ```git clone https://github.com/johankcarlsson/pi_ansible.git```
* `cd pi_ansible` into your cloned repo.
* `vagrant up`

## Configure the Pi 
* ssh into your vagrant box
* Clone this repo from the command line (in a directory of your choice):
   ```git clone https://github.com/johankcarlsson/pi_ansible.git```
* `cd pi_ansible` into your cloned repo.
* From the command line run:
* To install everything :
	`ansible-playbook -i inventories/hosts site.yml`. 

After you are up and running, open a browser and point it to [http://&lt;yourIP&gt;:3000](http://&lt;yourIP&gt;:3000) for Grafana or [http://&lt;yourIP&gt;:8888](http://&lt;yourIP&gt;:8888) for Chronograf.

## To DOs, still manual config
* 

## Deploying changes
Run the ansible command again. It will download some things all over again.
## Thanks to 
Several contributores that I have "borrowed" Ansible roles from. 
