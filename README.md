# PS3NETSRV-GO Docker Image

A simple Docker image to containerize [ps3netsrv-go](https://github.com/xakep666/ps3netsrv-go), a Go-based implementation of [ps3netsrv by aldostools](https://github.com/aldostools/webMAN-MOD/tree/master/_Projects_/ps3netsrv) for streaming PS3 game backups over a network to a modded PS3.

## Usage

### Never used docker before?

Check out the below link:

[Introduction | Docker Docs](https://docs.docker.com/get-started/introduction/)

### Pull the Image
```bash
docker pull sduo/ps3netsrv-go:latest
```

### Run the Container
To run the container, specify the directory to serve PS3 games using the `-v` option for volume mounting:
```bash
docker run -dit \
  --name ps3netsrv-go \
  -p 38008:38008 \
  -v /path/to/your/games:/ps3games \
  sduo/ps3netsrv-go:latest
```

### Stopping the Container
```bash
docker stop ps3netsrv-go
```

### Removing the Container
```bash
docker rm ps3netsrv-go
```

## License
This project uses the same license as [ps3netsrv-go](https://github.com/xakep666/ps3netsrv-go). Please refer to the original repository for details.

## Acknowledgments
Special thanks to [xakep666](https://github.com/xakep666) for developing ps3netsrv-go.

