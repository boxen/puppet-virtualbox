# Installs VirtualBox
#
# Usage:
#
#   include virtualbox
class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.2.12/VirtualBox-4.2.12-84980-OSX.dmg'
  }
}

