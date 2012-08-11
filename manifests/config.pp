class logstash::config inherits logstash {

  file { "/etc/logstash.conf":
    ensure => "present",
    owner => "root",
    group => "root",
    source => "puppet:///modules/logstash/conf",
  }

}
