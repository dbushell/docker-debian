# 🐳 Debian Docker Sandbox

A configured Debian sandbox container with Zsh and Starship shell prompt. Also with Vim, Git, Deno, Bun, and Node.

[Why does this exists?](https://dbushell.com/2021/02/22/macos-big-reinstall-docker-traefik-localhost/)

## Usage

```sh
docker pull ghcr.io/dbushell/debian
```

Docker CLI:

```sh
docker run -d \
  --name=debian_sandbox \
  ghcr.io/dbushell/debian \
  && docker exec -it debian_sandbox zsh
```

Docker Compose:

```yml
services:
  debian:
    container_name: debian_sandbox
    image: ghcr.io/dbushell/debian
```

```sh
docker compose up -d \
  && docker exec -it debian_sandbox zsh
```

(Enter `exit` to escape the container.)

### Shell Access

```sh
docker exec -it debian_sandbox zsh
```

### Clean Up

```sh
docker stop debian_sandbox && docker rm debian_sandbox
```

* * *

[MIT License](/LICENSE) | Copyright © 2023 [David Bushell](https://dbushell.com)
