source {
  type :docker_metrics
  stats_interval 5
}

match("docker.*.*") {
  type :forward
  send_timeout ENV['SEND_TIMEOUT']
  recover_wait ENV['RECOVER_WAIT']
  heartbeat_interval ENV['HEARTBEAT_INTERVAL']
  phi_threshold ENV['PHI_THRESHOLD']
  hard_timeout ENV['HARD_TIMEOUT']

  server {
    name :consul
    host ENV['SERVER_HOST']
    port ENV['SERVER_PORT']
    weight ENV['SERVER_WEIGHT']
  }
}
