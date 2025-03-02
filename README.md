## Description
This Docker image contains the [DuckDuckGO Chat CLI](https://github.com/benoitpetit/duckduckGO-chat-cli), allowing interaction with [DuckDuckGO AI Chat](https://duckduckgo.com/?q=DuckDuckGo+AI+Chat&ia=chat&duckai=1) via the command line. It is based on Debian and includes all the necessary dependencies to run the application with ease.

## Image Contents
The image contains the following tools:
- `git`
- `chromium`
- `expect`
- `curl`
- `duckduckgo-chat-cli`

The configuration file `config.json` is copied to the directory `~/.config/duckduckgo-chat-cli/`.

## Usage

If you want to run the CLI directly:
```bash
podman run --rm -it senerh/duckduckgo-chat-cli:1.1.3 duckduckgo-chat-cli
```

## Building and Publishing the Image

### 1. Build the image
```bash
podman build -t senerh/duckduckgo-chat-cli:1.1.3 .
```

### 2. Test the image locally
```bash
podman run --rm -it senerh/duckduckgo-chat-cli:1.1.3 duckduckgo-chat-cli
```

### 3. Log in to Docker Hub
If you are not logged in yet:
```bash
podman login docker.io
```

### 4. Push the image to Docker Hub
```bash
podman push senerh/duckduckgo-chat-cli:1.1.3
```

## Additional Notes
- The version of the CLI can be changed by modifying the `DUCKDUCKGO_CLI_VERSION` variable in the `Dockerfile`.
- `podman` can be replaced with `docker` if you are using Docker instead of Podman.

