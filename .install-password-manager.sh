#!/bin/env bash

USER_BIN_DIR="${HOME:-/home/daniel}/.local/bin"

set -euo pipefail
IFS=$'\n\t'
temp_folder=$(mktemp -d -t tmp.XXXXXXXXXX)
cd $temp_folder

function finish {
    rm -rf "$temp_folder"
}

trap finish EXIT

function install_password_manager() {
  # exit immediately if password-manager-binary is already in $PATH
  type bw >/dev/null 2>&1 && exit
  mkdir -p ${USER_BIN_DIR}
  curl -sL "https://github.com/bitwarden/clients/releases/download/cli-v2025.1.2/bw-linux-2025.1.2.zip" | funzip > bw
  install -m 0755 bw ${USER_BIN_DIR}/bw
}

install_password_manager
