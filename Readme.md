# Homeautomation Notes

This repo represents my homeautomation. Configuration folders are ignored. This is basically for myself to backup configuration and documentation.

## Installation

**IMPORTANT**

Raspbian Bookworm does not support the "old" style sysfs GPIO, e.g. changing GPIO 25 with `echo 1 > /sys/class/gpio/gpio25/out`. Therefore, HomeGears homematic implementation with the CC1101 does not work. Install a Raspbian Bullseye image!
