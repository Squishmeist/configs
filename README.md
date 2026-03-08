# Development Environment Configuration

This repository contains the configuration files for my personal development environment, including terminal tooling, editor setup, and language tooling.

---

## Package Manager

### Homebrew

[Homebrew](https://brew.sh/) is used to install and manage system packages.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

## IDE

- [Visual Studio Code](https://code.visualstudio.com/download)

- **[Neovim](https://neovim.io/doc/install/)** — modern Vim-based editor with an extensive plugin ecosystem

```bash
brew install neovim
```

---

## 🖥️ Terminal Setup

### Ghostty

[Ghostty](https://ghostty.org/docs/install/binary) — GPU-accelerated terminal emulator.

```bash
brew install --cask ghostty
```

---

### Shell Configuration

- **[Zsh](https://ohmyz.sh/)** with the **Oh My Zsh** framework
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- **[Starship](https://starship.rs/)** — fast, customizable cross-shell prompt
    ```bash
    brew install starshibrew install starshipp
    ```
    Add to `.zshrc`
    ```bash
    eval "$(starship init zsh)"
    ```
- **[Tmux](https://github.com/tmux/tmux)** — terminal multiplexer configured with the Catppuccin theme
  ```bash
  brew install tmux
  ```

### 📁 Structure

```
configs/
├── README.md              # Project documentation
├── nvim/                  # Neovim configuration
│   ├── init.lua           # Main configuration entry point
│   └── lua/
│       ├── plugins.lua    # Plugin management (lazy.nvim)
│       ├── remap.lua      # Custom key mappings
│       └── set.lua        # Editor settings and options
└── tmux/                  # Tmux configuration
    ├── tmux.conf          # Tmux config with Catppuccin theme
    └── sessioniser        # Smart session management script
```

---

## Go Tooling

### Install Go

[Go](https://go.dev/doc/install)

```bash
brew install go
```

---

## Protocol Buffers

[Protocol Buffers](https://protobuf.dev/) are used to generate type-safe RPC APIs.

### Install the compiler

```bash
brew install protobuf
```

### Install Go plugins

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest
```

---

## OpenAPI Code Generation

[oapi-codegen](https://github.com/oapi-codegen/oapi-codegen) generates type-safe REST API clients and servers from OpenAPI specifications.

```bash
go install github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@latest
```

---

## SQL Code Generation

[SQLC](https://sqlc.dev/) generates type-safe Go code from SQL queries.

```bash
go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest
```
