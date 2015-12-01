# coding: utf-8
require 'itamae/plugin/resource/ghq'

execute 'setenv $GOPATH' do
  command 'export GOPATH=$HOME'
  only_if 'test -z $GOPATH'
end

execute 'git config ghq.root' do
  command 'git config ghq.root "~/src"'
  not_if 'git config --get ghq.root'
end

ghq 'oke-py/dotfiles'
