class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.1.20/VirtualBox-4.1.20-80170-OSX.dmg'
  }
}

