# Installs VirtualBox
#
# Usage:
#
#   include virtualbox
class virtualbox {
  package { 'VirtualBox-4.3.0-89960':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.3.0/VirtualBox-4.3.0-89960-OSX.dmg',
    ensure   => installed,
  }
}

