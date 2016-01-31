# docker-skydns
SkyDNS 2 wrapped in a ready-to-use docker container.

## Usage

Just start up a container and point its UDP port 53 to where you want to use it.

```bash
docker run --name dns \
  -e ETCD_MACHINES='http://192.168.0.1:4001,http://192.168.0.2:4001' \
  -d -p 127.0.0.1:53:53/udp \
  easprint/skydns
```

See the [SkyDNS README](https://github.com/skynetservices/skydns) for usage details.
