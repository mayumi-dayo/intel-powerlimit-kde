# intel-powerlimit-kde
Quick PL1/PL2 limit profile switcher for linux using kdialog and intel-undervolt. Requires hasswell or newer.
## Prerequisites
```intel-undervolt, kdialog```
intel undervolt can be installed here:
https://github.com/kitsunyan/intel-undervolt
kdialog should be in your distro's package manager.


## Setup
place ```powerlimit.sh``` in ```/usr/local/bin/```. 
place ```powerswitch.sh ``` in \~/.local/bin/```
place ```powerlimit.desktop``` where ever you want the shortcut (such as a panel), or in ```\~/.local/share/applications/``` if you want to run it like a program.

the default profiles are (units in watts):
```
anemia: PL1=8, PL2=10
low power: PL1=13, PL2=15
balance: PL1=25, PL2=55
performance: PL1=45, PL2=70
```
