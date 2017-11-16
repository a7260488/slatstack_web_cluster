base:
  '*':
    - init.env_init

prod:
  'linux-node1':
    - cluster.haproxy-outside
    - cluster.haproxy-outside-keepalived
    - web.bbs
  'linux-node2':
    - cluster.haproxy-outside
    - cluster.haproxy-outside-keepalived
    - web.bbs
    - memcached.service
