#!/bin/bash
ruby ~/vimrc/bin/rpat.rb $1
cd ~/git/pat_cpp/$1
exec /bin/bash
#/bin/bash ~/git/pat_cpp/$1

