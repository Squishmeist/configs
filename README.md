# Development Environment Configuration

This repository contains my personal development environment configuration files for macOS.

## 🖥️ Terminal Setup

### Terminal Emulator

- **Ghostty** - Modern, fast terminal emulator

### Shell Configuration

- **Zsh** with Oh My Zsh framework
- **Starship** - Cross-shell prompt with beautiful customization

### Core Tools

- **Neovim** - Modern Vim-based editor with extensive plugin ecosystem
- **Tmux** - Terminal multiplexer with Catppuccin theme

## 📁 Configuration Structure

```
configs/
├── README.md           # This file
├── nvim/              # Neovim configuration
│   ├── init.lua       # Main config entry point
│   └── lua/
│       ├── plugins.lua # Plugin management with lazy.nvim
│       ├── remap.lua   # Custom key mappings
│       └── set.lua     # Vim settings and options
└── tmux/              # Tmux configuration
    ├── tmux.conf      # Main tmux config with Catppuccin theme
    └── sessioniser    # Smart session management script
```