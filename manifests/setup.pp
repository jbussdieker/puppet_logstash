class logstash::setup inherits logstash {

  include logstash::package
  include logstash::service
  include logstash::config

}
