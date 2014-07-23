name             'camunda-template'
maintainer       'Christian Lipphardt'
maintainer_email 'christian.lipphardt@camunda.com'
license          'Apache 2.0'
description      'Installs/Configures camunda-cookbook-template'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

recipe 'camunda-template::default', 'Installs/Configures camunda-template-cookbook.'

supports 'ubuntu', '14.04'