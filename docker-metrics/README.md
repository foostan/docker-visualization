Docker metrics
=======================

Starting Container
------------
```
$docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /sys/fs/cgroup/:/sys/fs/cgroup:ro \
  --link elasticsearch:elasticsearch \
  foostan/docker-metrics
```
