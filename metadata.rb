name 'pjc_lamp'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Installs/Configures pjc_lamp'
long_description 'Installs/Configures pjc_lamp'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

supports 'centos'

depends 'mysql', '~> 8.4.0'
depends 'php', '~> 4.2.0'
depends 'yum-mysql-community', '~> 2.1.0'
depends 'selinux', '~> 2.0.3'
