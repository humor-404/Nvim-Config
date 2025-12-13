# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## 🚀 Installation

### 1️⃣ Requirements

Make sure you have the following installed:

- **Neovim ≥ 0.9.0**
- **Git**
- **A Nerd Font** (for icons)
- **Node.js** (for some LSP servers)
- **ripgrep** (recommended)
- **fd** (recommended)

**Arch Linux:**
```sh
sudo pacman -S neovim git nodejs ripgrep fd


mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone https://github.com/<your-username>/<repo-name>.git ~/.config/nvim

nvim

