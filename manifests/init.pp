# Installs VirtualBox
#
# Usage:
#
#   include virtualbox
class virtualbox {

  exec { 'Kill Virtual Box Processes':
    command => 'killall -9 VBoxXPCOMIPCD && killall -9 VBoxSVC && killall -9 VBoxHeadless',
    path    => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
    #refreshonly => true,
  }

  package { 'VirtualBox-4.3.0-89960':
    ensure   => installed,
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.3.0/VirtualBox-4.3.0-89960-OSX.dmg',
    require  => Exec['Kill Virtual Box Processes'],
  }
}

