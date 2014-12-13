source {
  type :docker_metrics
  stats_interval 5
}

match("**") {
  type :elasticsearch
  host ENV['ELASTICSEARCH_HOST']
  port ENV['ELASTICSEARCH_PORT']
  include_tag_key true
  tag_key "_key"
  logstash_format true
  logstash_prefix "cgroup"
}
