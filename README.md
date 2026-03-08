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

## Shell Configuration

### Zsh + Oh My Zsh

Install **[Zsh](https://ohmyz.sh/)** with the **Oh My Zsh** framework for improved defaults, plugins, and themes.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Starship Prompt

Install **[Starship](https://starship.rs/)** — fast, customizable cross-shell prompt

```bash
brew install starship
```

Add the following to your .zshrc:

```bash
eval "$(starship init zsh)"
```

Reload your shell:

```bash
source ~/.zshrc
```

### Tmux

Install **[tmux](https://github.com/tmux/tmux)**, a terminal multiplexer for persistent sessions and improved terminal workflows.

```bash
brew install tmux
```

Install TPM (Tmux Plugin Manager):

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm.
```

Install fzf for fuzzy searching (used by the sessioniser script):

```bash
brew install fzf
```

#### Configuration

Create the tmux configuration file:

```bash
touch ~/.tmux.conf
```

Copy the contents of the provided .tmux.conf into this file.
Reload the configuration:

```bash
tmux source-file ~/.tmux.conf
```

Install plugins after launching tmux:

```bash
Prefix + I
```

#### Sessioniser

The sessioniser script allows quick switching between project directories using fzf, automatically creating a tmux session if one does not already exist.

```bash
touch ~/.tmux/sessioniser
```

Paste the provided sessioniser script into this file.
Make it executable:

```bash
chmod +x ~/.tmux/sessioniser
```

Reload tmux:

```bash
tmux source-file ~/.tmux.conf
```

Inside tmux, press:

```bash
Prefix + f
```

to open the project selector popup.

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
