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

	@@@ ruby
		...
		# properly encapsulated classes
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

	@@@ ruby
	node heute-kaufen inherits default {
		include collectd::client
		include heute_kaufen::params

		$user = $heute_kaufen::params::user

		ssh::admins { 'xunde': }
		ssh::developers { $user: }
		heute_kaufen::user { $user: }
	}

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
