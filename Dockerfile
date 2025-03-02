FROM debian:latest

# Installer les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y \
    git \
    chromium \
    expect \
    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Définir la version du CLI
ENV DUCKDUCKGO_CLI_VERSION=v1.1.3

# Télécharger et installer duckduckGO-chat-cli
RUN curl -LO "https://github.com/benoitpetit/duckduckGO-chat-cli/releases/download/${DUCKDUCKGO_CLI_VERSION}/duckduckgo-chat-cli_${DUCKDUCKGO_CLI_VERSION}_linux_amd64" && \
    chmod +x duckduckgo-chat-cli_${DUCKDUCKGO_CLI_VERSION}_linux_amd64 && \
    mv duckduckgo-chat-cli_${DUCKDUCKGO_CLI_VERSION}_linux_amd64 /usr/local/bin/duckduckgo-chat-cli

# Créer le répertoire de configuration et copier config.json
RUN mkdir -p /root/.config/duckduckgo-chat-cli
COPY config.json /root/.config/duckduckgo-chat-cli/config.json
