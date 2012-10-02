class virtualbox {
  package { 'VirtualBox':
    provider => 'pkgdmg',
    source   => template('virtualbox/url')
  }
}

