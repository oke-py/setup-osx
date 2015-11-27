require 'spec_helper'
require 'yaml'

nodes_dir_path = File.expand_path(File.dirname(__FILE__) << "/../../nodes")
node = YAML.load_file("#{nodes_dir_path}/local.yml")

describe command "test $(which brew)" do
  its(:exit_status) { should eq 0 }
end

node['brew']['install_packages'].each do |package|
  describe package "#{package}" do
    it { should be_installed }
  end
end

node['brew']['install_apps'].each do |app|
  describe package "#{app}" do
    it { should be_installed.by('homebrew_cask') }
  end
end
