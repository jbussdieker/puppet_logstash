class logstash::service inherits logstash {

  file { "/etc/init.d/logstash":
    ensure => "present",
    owner => "root",
    group => "root",
    mode => 0755,
    source => "puppet:///modules/logstash/logstash",
  }

}
