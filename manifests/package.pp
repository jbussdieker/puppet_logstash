class logstash::package inherits logstash {

  exec { "logstash_download":
    command => "/usr/bin/wget -o /tmp/logstash-1.1.1-monolithic.jar http://semicomplete.com/files/logstash/logstash-1.1.1-monolithic.jar",
    creates => "/tmp/logstash-1.1.1-monolithic.jar",
  }

  file { "/opt/logstash-1-1-1-monolithic.jar":
    ensure => "present",
    source => "/tmp/logstash-1.1.1-monolithic.jar",
    require => Exec["logstash_download"],
  }

}
