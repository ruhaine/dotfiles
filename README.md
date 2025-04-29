# dotfiles [![Generic badge](https://img.shields.io/badge/Version-v1.0.0-<COLOR>.svg)](https://shields.io/)

My personal dotfiles managed using [chezmoi](https://github.com/twpayne/chezmoi)

## 🚀 Usage

```console
  sudo apt update ; sudo apt install curl unzip git -y
  export SECRETS_OFF="off" # clean isntall don't have the age key
  curl https://raw.githubusercontent.com/dxas90/dotfiles/refs/heads/main/.install-password-manager.sh | bash
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${HOME}/.local/bin init --apply dxas90
```

## 📝 License

[MIT](https://github.com/dxas90/dotfiles/blob/master/LICENSE)
