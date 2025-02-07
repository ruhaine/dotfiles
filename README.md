# dotfiles [![Generic badge](https://img.shields.io/badge/Version-v1.0.0-<COLOR>.svg)](https://shields.io/)

My personal dotfiles managed using [chezmoi](https://github.com/twpayne/chezmoi)

## 🚀 Usage

1. Install dependencies:

   ```console
   openssh chezmoi starship bitwarden-cli
   ```

2. Ensure the dependencies are installed:

   - [chezmoi](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md)
   - [bitwarden-cli](https://github.com/bitwarden/clients)

3. Init adn apply chezmoi repo:

   ```bash
   # from https://github.com/dxas90/dotfiles/blob/main/dot_bash_aliases#L23
   curl -sL https://raw.githubusercontent.com/dxas90/dotfiles/refs/heads/main/dot_local/bin/executable_custom-bw-login | bash -s -- local ; source ~/.bw_session ; chezmoi init --apply dxas90
   ```

## 📝 License

[MIT](https://github.com/dxas90/dotfiles/blob/master/LICENSE)
