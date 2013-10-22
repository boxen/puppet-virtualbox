require 'spec_helper'

describe 'virtualbox' do
  it do
    should contain_package('VirtualBox-4.3.0-89960').with({
      :source   => 'http://download.virtualbox.org/virtualbox/4.3.0/VirtualBox-4.3.0-89960-OSX.dmg',
      :provider => 'pkgdmg',
      :ensure   => installed,
    })
  end
end
