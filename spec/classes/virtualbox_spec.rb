require 'spec_helper'

describe 'virtualbox' do
  it do
    should contain_package('VirtualBox').with({
      :source   => 'http://download.virtualbox.org/virtualbox/4.2.10/VirtualBox-4.2.10-84104-OSX.dmg',
      :provider => 'pkgdmg'
    })
  end
end