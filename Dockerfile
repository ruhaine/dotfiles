#syntax=docker/dockerfile:1.4
#docker buildx build --platform linux/arm64,linux/amd64 -t dxas90/coder-chezmoi:latest . --build-arg GITHUB_TOKEN=ghp_xxxxxxxxx --build-arg GITHUB_USERNAME=xxxxx --no-cache
FROM codercom/enterprise-base:ubuntu as base

ARG GITHUB_TOKEN \
    GITHUB_USERNAME

RUN sudo apt-get update && \
    sudo apt-get install curl unzip git -y && \
    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${HOME}/.local/bin init --apply ${GITHUB_USERNAME:-} && \
    sudo rm -rf ~/.cache

FROM codercom/enterprise-base:ubuntu as dev

RUN sudo apt-get update && \
    sudo apt-get install -y curl unzip git wget busybox && \
    curl -sS https://starship.rs/install.sh | STARSHIP_INSTALL=true sh -s -- -y && \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo mkdir -p /run/user/1000 && sudo chown 1000:1000 /run/user/1000 && \
    sudo chmod 700 /run/user/1000
COPY --from=base /home/coder /home/coder
WORKDIR /home/coder
CMD [ "sh", "-c", "exec /bin/bash -l -c 'source ~/.bashrc; bash'" ]
