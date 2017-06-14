# Starting the stub using docker
This is a stub server for demo purposes. It uses [WireMock](http://wiremock.org/) and can be run as a Docker container using the following commands:
```console
docker build -t stub-demo .
docker run -d -p 9999:9999 stub-demo
```
You can now connect to the stub on port 9999.

# Example requests
- curl 'http://localhost:9999/api/demo?param1=123&param2=bla'
- curl 'http://localhost:9999/api/demo?param1=456&param2=bla'
