---
title: My WSL 2 Setup, for Golang, Shell performance and memory limits
date: 2020-06-04T19:22:57.974Z
description: My WSL 2 Setup, for Golang, Shell performance and memory limits
---
Have ubuntu Install GOlang in WSL2

sudo apt install ubuntu-release-upgrader-core

sudo do-release-upgrade -dc

sudo do-release-upgrade -d Don't install GRUB

sudo apt install golang-go

From <https://github.com/golang/go/wiki/Ubuntu> 

\[interop] 

appendWindowsPath = false

/etc/wsl.conf

where code Alias code=/mnt/c/Users/anbossar/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code
alias code="/mnt/c/Users/anbossar/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
git clone git@github.com:terraform-providers/terraform-provider-azurerm

From <https://github.com/terraform-providers/terraform-provider-azurerm> 

export GOPATH=$HOME/go export PATH=$GOPATH/bin:/home/andre/.local/bin/:$PATH
Vi GNUmakefile
fmtcheck:
        @sh "$(CURDIR)/scripts/gofmtcheck.sh"
        @sh "$(CURDIR)/scripts/timeouts.sh"
        @bash "$(CURDIR)/scripts/check-test-package.sh"

![](/img/2020-06-04-21.27.28.png "My internet is fast")



https://www.reddit.com/r/bashonubuntuonwindows/comments/dkzqyo/upgrading_to_1910_wsl2/f4lsm3n/

Common myths: WSL2 is special, it's not
I need to so gopath, no, only when you deviate from the standard 
$HOME/go

From <https://golang.org/doc/install/source#gopath> 

wsl --shutdown



\[14:37, 6/4/2020] Jürg Staub: Übrigens du kannst ein %UserProfile%/.wslconfig anlegen und dort folgende Zeilen addieren:

\[wsl2] memory=6GB
swap=0
localhostForwarding=true
\[14:37, 6/4/2020] Jürg Staub: Dann kann man es brauchen \[14:37, 6/4/2020] Jürg Staub: Dann kannst du noch das machen:

alias drop_cache="sudo sh -c "echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'"" \[14:38, 6/4/2020] Jürg Staub: drop_cache kannst aufrufen, wenn du wieder Memory brauchst \[14:38, 6/4/2020] Jürg Staub: Your faithful WSL supporter