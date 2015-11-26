# coding: utf-8

include_recipe 'homebrew::package'
include_recipe 'homebrew::cask'
include_recipe '../cookbooks/ghq/default.rb'
include_recipe 'atom::package'
