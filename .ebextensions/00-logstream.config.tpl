packages:
  yum:
    awslogs: []

files:
  "/etc/awslogs/awscli.conf" :
    mode: "000600"
    owner: root
    group: root
    content: |
      [plugins]
      cwlogs = cwlogs
      [default]
      region = `{"Ref":"AWS::Region"}`

  "/etc/awslogs/awslogs.conf" :
    mode: "000600"
    owner: root
    group: root
    content: |
      [general]
      state_file = /var/lib/awslogs/agent-state

  "/etc/awslogs/config/logs.conf" :
    mode: "000600"
    owner: root
    group: root
    content: |
      __LOGCONFIG__

commands:
  "01":
    command: chkconfig awslogs on
  "02":
    command: service awslogs restart
