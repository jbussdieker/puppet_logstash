class logstash::config inherits logstash {

  file { "/etc/logstash.conf":
    ensure => "present",
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet:///modules/logstash/logstash.conf",
  }

}
