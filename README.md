# OSXInit
Repository to maintain quickstart and setup files for OSX

## Docker Machine
If you are using, dockerinit.sh helps initialize and start the default Virtualbox VM
Add below alias to the .zshrc to make this a power command

```command
alias dstart='~/Code/OSXinit/dockerinit.sh; eval "$(docker-machine env $VMNAME)"'
alias dstop='docker-machine stop default'
```

## BrewFile
Created a dump of my Brew Installs using which outputs the BrewFile

```
brew bundle dump
```

Install using the dump file using 

```
brew bundle
```

More info about BrewFile can be found here - https://github.com/Homebrew/homebrew-bundle 
