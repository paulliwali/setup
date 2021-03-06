setup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/paulliwali/setup.git
./setup/setup.sh   
```

See also http://github.com/startup-class/dotfiles and
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.

Updated By Paul Deng
====================
Added extra configuration for personal usage and setup on EC2 instance. 

- Vim Plugins
- More Bash Plugins

Source: http://swaroopch.com/2010/12/06/bash-vim-setup/

## MacOS

Install [Homebrew](http://brew.sh/) to install missing packages on OSX, effectively replacing ```apt-get```
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```



