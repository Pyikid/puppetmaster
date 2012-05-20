class sudo {
	#package { sudo:
	#	ensure => present,
	#}

	#if $operatingsystem == "Ubuntu" {
	#	package { "sudo-ldap":
	#		ensure => present,
	#		require => Package["sudo"],
	#	}
	#}

	file { "/etc/sudoers":
		owner => "root",
		group => "root",
		mode => 0440,
		#sourece => "puppet://$puppetserver/modules/sudo/etc/sudoers",
		source => "puppet:///files/linuxcbt.internal/sudo/etc/sudoers",
		#require => Package["sudo"],
	}
}
