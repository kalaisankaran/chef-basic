#
# Cookbook:: apache
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'install apache' do
        expect(chef_run).to install_package('apache2')
    end
    it 'starts the apache' do
        expect(chef_run).to start_service('apache2')
    end
    it 'enables the apache service' do
        expect(chef_run).to enable_service('apache2')
    end
    it 'remove tree' do
	expect(chef_run).to remove_package('tree')
    end
  end

  context 'When all attributes are default, on CentOS 7' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '7'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'install apache' do
	expect(chef_run).to install_package('apache2')
    end
    it 'starts the apache' do 
	expect(chef_run).to start_service('apache2')
    end
    it 'enables the apache service' do
	expect(chef_run).to enable_service('apache2')
    end
  end
end
