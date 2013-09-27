# Installs VirtualBox
#
# Usage:
#
#   include virtualbox
class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg'
  }
}

