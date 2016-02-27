require 'spec_helper'

describe 'virtualbox' do
  it do
    should contain_exec('Kill Virtual Box Processes').with({
      :command => 'pkill "VBoxXPCOMIPCD" || true && pkill "VBoxSVC" || true && pkill "VBoxHeadless" || true',
      :path    => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
      :refreshonly => true,
    })
  end
  it do
    should contain_package('VirtualBox-5.0.14-105127').with({
      :ensure   => 'installed',
      :source   => 'http://download.virtualbox.org/virtualbox/5.0.14/VirtualBox-5.0.14-105127-OSX.dmg',
      :provider => 'pkgdmg',
      :require  => 'Exec[Kill Virtual Box Processes]',
    })
  end
end
