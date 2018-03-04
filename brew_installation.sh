#!/bin/bash
# this file contains all the programs to install for MacOS using homebrew

if [[ $(uname) == 'Darwin' ]]; then
    brew install asciiquarium
    brew install aspell
    brew install bash-completion
    brew install bash-git-prompt
    brew install cf-cli
    brew install cmake
    brew install coreutils
    brew install cowsay
    brew install cscope
    brew install ctags
    brew install fortune
    brew install freetype
    brew install gdbm
    brew install gettext
    brew install git
    brew install imagemagick
    brew install iproute2mac
    brew install jemalloc
    brew install jpeg
    brew install jq
    brew install libevent
    brew install libidn2
    brew install libpng
    brew install libtermkey
    brew install libtiff
    brew install libtool
    brew install libunistring
    brew install libuv
    brew install libvterm
    brew install libyaml
    brew install lolcat
    brew install luajit
    brew install maven
    brew install msgpack
    brew install neofetch
    brew install neovim
    brew install oniguruma
    brew install openssl
    brew install openssl@1.1
    brew install perl
    brew install pkg-config
    brew install python
    brew install readline
    brew install ruby
    brew install screenresolution
    brew install sqlite
    brew install telnet
    brew install tmux
    brew install tree
    brew install unibilium
    brew install valgrind
    brew install vim
    brew install wget
    brew install xz
else 
    echo "No brew installions for $(uname)"
    echo "This is only for Mac Computers"
fi