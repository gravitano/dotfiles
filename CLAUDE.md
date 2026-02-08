# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing development environment configurations. It uses symlinks to deploy configuration files from this repository to their standard locations in the home directory.

## Setup and Installation

```bash
# Initial setup
./install.sh
```

The install script creates symlinks for:
- Git configuration: `git/gitconfig` → `~/.gitconfig`
- Global gitignore: `git/gitignore_global` → `~/.gitignore_global`
- Zsh configuration: `shell/zshrc` → `~/.zshrc`
- Makes scripts in `bin/` executable (if the directory exists)

## Repository Structure

```
dotfiles/
├── git/
│   ├── gitconfig          # Git configuration with aliases and settings
│   └── gitignore_global   # Global gitignore patterns
├── shell/
│   └── zshrc             # Zsh configuration with aliases
├── bin/                  # Custom scripts (referenced but may not exist yet)
├── install.sh            # Installation script that creates symlinks
└── README.md
```

## Key Configuration Details

### Git Configuration
- Uses VS Code as the default editor (`code --wait`)
- Pull with rebase by default
- Auto-stash during rebase
- Auto-prune on fetch
- Extensive set of git aliases (see `git/gitconfig` for full list)

### Shell Aliases
The `shell/zshrc` defines git shortcuts that map to git aliases:
- `gs` → `git s` (status)
- `gl` → `git l` (log)
- `gc` → `git c` (commit)
- `gp` → `git p` (push)
- etc.

## Modifying Configurations

When editing configuration files:
1. Edit files in this repository (e.g., `git/gitconfig`, `shell/zshrc`)
2. Changes take effect immediately via symlinks
3. For shell config changes, run `reload` alias or `source ~/.zshrc`
4. Test changes before committing

## Adding New Configurations

To add new configuration files:
1. Place the config file in an appropriate subdirectory
2. Update `install.sh` to create the symlink
3. If adding scripts to `bin/`, ensure they are executable
4. Update this CLAUDE.md if the addition is significant
