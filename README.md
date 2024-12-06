# PS3NETSRV-GO Docker Image

A simple Docker image to containerize [ps3netsrv-go](https://github.com/xakep666/ps3netsrv-go), a Go-based implementation of [ps3netsrv by aldostools](https://github.com/aldostools/webMAN-MOD/tree/master/_Projects_/ps3netsrv) for streaming PS3 game backups over a network to a modded PS3.

## Usage

### What is ps3netsrv?

Check out the link below:

[ps3netsrv](https://github.com/aldostools/webMAN-MOD/tree/master/_Projects_/ps3netsrv)

### Never used docker before?

Check out this link:

[Introduction | Docker Docs](https://docs.docker.com/get-started/introduction/)

### Pull the Image
```bash
docker pull catpop/ps3netsrv-go:latest
```

### Run the Container
(for the -v option, :/ps3games cannot be changed, this is the folder referenced within the container)
```bash
docker run -dit \
  --name ps3netsrv-go \
  -p 38008:38008 \
  -v /path/to/your/games:/ps3games \
  catpop/ps3netsrv-go:latest
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

