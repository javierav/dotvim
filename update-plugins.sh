#!/usr/bin/env bash

# update all plugins (submodules) to latest code
f() {
  git submodule foreach "git checkout master; git pull origin master"
}

f $*
