FROM codercom/enterprise-base:ubuntu

ARG GITHUB_TOKEN

ENV GITHUB_TOKEN=${GITHUB_TOKEN:-} \
    SECTRETS_OFF=value
RUN sudo apt-get update; \
    sudo apt-get install curl; \
    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${HOME}/.local/bin init --apply ruhaine ; \
    rm -rf ~/.cache ; sudo rm -rf /var/lib/apt/lists/*
