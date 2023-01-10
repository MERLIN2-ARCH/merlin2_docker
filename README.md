# merlin2_docker

http://127.0.0.1:6080/

## Build and Run

```shell
docker build -t merlin2 ./
docker run -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=vncpassword --rm -it merlin2
```