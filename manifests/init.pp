class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => 'http://download.virtualbox.org/virtualbox/4.2.8/VirtualBox-4.2.8-83876-OSX.dmg'
  }
}

