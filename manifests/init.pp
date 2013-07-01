# Installs VirtualBox
#
# Usage:
#
#   include virtualbox
class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.2.14/VirtualBox-4.2.14-86644-OSX.dmg'
  }
}

