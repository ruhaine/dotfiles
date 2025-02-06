# dotfiles [![Generic badge](https://img.shields.io/badge/Version-v1.0.0-<COLOR>.svg)](https://shields.io/)

My personal dotfiles managed using [chezmoi](https://github.com/twpayne/chezmoi)

## 🚀 Usage

1. Install dependencies:

   ```console
   openssh chezmoi starship fzf bat fd ripgrep eza bitwarden-cli
   ```

2. Ensure the dependencies are installed:

   - [chezmoi](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md)
   - [bitwarden-cli](https://github.com/bitwarden/clients)

3. Init chezmoi repo:

   ```bash
   chezmoi init dxas90/dotfiles
   ```

4. Apply dotfiles

   ```bash
   chezmoi apply
   ```

## 📝 License

[MIT](https://github.com/dxas90/dotfiles/blob/master/LICENSE)
