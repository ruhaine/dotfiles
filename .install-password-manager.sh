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

function install_password_manager_backup() {
  type rbw >/dev/null 2>&1 && exit
  mkdir -p ${USER_BIN_DIR}
  curl -sLo rbw.tar.gz "https://github.com/doy/rbw/releases/download/1.13.2/rbw_1.13.2_linux_amd64.tar.gz"
  tar xzf rbw.tar.gz
  install -m 0755 rbw ${USER_BIN_DIR}/rbw
  install -m 0755 rbw-agent ${USER_BIN_DIR}/rbw-agent
}

install_password_manager
install_password_manager_backup
