!SLIDE setion_title transistion=fade

# Examples #

!SLIDE top

	@@@ ruby
	node default {
		package {
			'byobu':        ensure => installed;
			'htop':         ensure => installed;
			'fortunes':     ensure => installed;
			'fortune-mod':  ensure => installed;
			'bzip2':        ensure => installed;
			'vim':          ensure => installed;
			'telnet':       ensure => installed;
		}
		...

!SLIDE top

	@@@ cucumber
	Scenario: A lota packages
		Given a node named "default"
		When I compile the catalog
		Then following packages should be dealt with:
			| name       | state     |
			| byobu      | installed |
			| git-core   | installed |
			| htop       | installed |
			| etckeeper  | installed |
			| sudo       | latest    |
			...

!SLIDE top

	@@@ ruby
		...
		# properly encapsulated modules
		include sudo
		include packages::git
		include packages::etckeeper
		include packages::ntpdate
		include puppet::node

		# monitoring
		collectd::add_monitor { 'disks':
			template_source => 'collectd/disks.conf.erb'
		}
	}

!SLIDE top
	@@@ cucumber
		Then there should be a resource
				"File[/etc/etckeeper/etckeeper.conf]"
		And the file's content should
				match /^VCS="git"/

		Then there should be a resource
				"Collectd::Add_monitor[disks]"
		And the monitor's template_source should
				be "collectd/disks.conf.erb"

!SLIDE top

	@@@ ruby
	node vulkan inherits heute-kaufen {
		include heute_kaufen::prerequisites

		heute_kaufen::shop { 'heute_kaufen':
			server_name     => 'heute-kaufen.de',
			server_aliases  => 'www.heute-kaufen.de heutekaufen.de www.heutekaufen.de',
			ssl_certificate => 'star.heutekaufen.de.cert',
			ssl_key         => 'heutekaufen.de.key',
			application     => true,
			database        => true
		}
	}

!SLIDE top
	@@@ cucumber
	Scenario: vulkan
		Given a node specified
				by "features/nodes/vulkan.yaml"
		When I compile the catalog

		Then the following resources should be dealt with:
			| resource                        | state     |
			| package "postgresql-client-8.4" | installed |
			| package "postgresql-8.4"        | installed |
			| service "postgresql"            | running   |
			| package "libpq-dev"             | installed |
			| package "freetds-dev"           | installed |
			| package "imagemagick"           | installed |
			| package "unzip"                 | installed |
			| package "libmagickwand-dev"     | installed |
			| package "libcurl4-gnutls-dev"   | installed |

!SLIDE top

	@@@ cucumber
		Then there should be a resource
				"Rails::Ruby[ruby-1.9.3-p194 for heute_kaufen]"

		And there should be a resource
				"Rails::Webserver[heute-kaufen.de]"
		And there should be a resource
				"File[/etc/apache2/sites-available/heute_kaufen]"
		And the file's content should 
				match /VirtualHost \*:80/
		And the file's content should
				match /VirtualHost \*:443/

!SLIDE top
	@@@ cucumber
		Then there should be a resource
				"Ssh::Admins[xunde]"
		And there should be a resource
				"Ssh::Developers[application]"

!SLIDE top

	@@@ ruby
	node heute-kaufen inherits default {
		include collectd::client
		include heute_kaufen::params

		$user = $heute_kaufen::params::user

		ssh::admins { 'xunde': }
		ssh::developers { $user: }
		heute_kaufen::user { $user: }
	}


!SLIDE top small
	@@@ cucumber
	Feature: General policy for all catalogs
		In order to ensure applicability of a host's catalog
		As a manifest developer
		I want all catalogs to obey some general rules

		Scenario Outline: compile and verify
			Given a node specified by "features/nodes/<hostname>.yaml"
			When I compile its catalog
			Then compilation should succeed
			And all resource dependencies should resolve

			Examples:
				| hostname                   |
				| vulkan.heute-kaufen.de     |
				| ferenginar.heute-kaufen.de |
				| betazed.heute-kaufen.de    |
				| romulus.heute-kaufen.de    |
				| khitomer.heute-kaufen.de   |
				| troyius.heute-kaufen.de    |

