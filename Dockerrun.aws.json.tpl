{
  "AWSEBDockerrunVersion": 2,
  "volumes": [
  ],
  "containerDefinitions": [
    {
      "name": "webserver",
      "image": "__DOCKER_IMAGE1__",
      "essential": true,
      "memoryReservation": 256,
      "portMappings": [
        {
          "hostPort": 80,
          "containerPort": 3000
        }
      ]
    }
  ]
}
