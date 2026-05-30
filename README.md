# intel-powerlimit-kde
Quick PL1/PL2 limit profile switcher for linux using kdialog and intel-undervolt; can also be used for undervolt profiles. Requires hasswell or newer.
## Prerequisites
```intel-undervolt, kdialog```<br/>
intel undervolt can be installed here:<br/>
https://github.com/kitsunyan/intel-undervolt<br/>
kdialog should be in your distro's package manager.<br/>


## Setup
place ```powerlimit.sh``` in ```/usr/local/bin/```. <br/>
place ```powerswitch.sh ``` in \~/.local/bin/```<br/>
place ```powerlimit.desktop``` where ever you want the shortcut (such as a panel), or in ```\~/.local/share/applications/``` if you want to run it like a program.

the default profiles are (units in watts):
```
  3w
  6w
  12w
  15w
  20w
  70w
```
the default profiles have no undervolt, but profiles can be used for undervolting.
