# dotfiles

My personal configuration settings for both **bash** and **zsh** shells.

## Features

- **Cross-shell compatibility**: Works seamlessly with both bash and zsh
- **Custom prompt**: Beautiful colored prompt with git integration
- **Git integration**: Shows current branch and dirty status (💩 when uncommitted changes)
- **256-color support**: Uses extended color palette for modern terminals
- **Smart aliases**: Shell-aware aliases that work correctly in both environments
- **Enhanced zsh features**: History management, auto-completion, and navigation improvements

## Installation

1. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

3. Switch to zsh (optional but recommended):
   ```bash
   chsh -s $(which zsh)
   ```

4. Start a new terminal session or reload your configuration:
   ```bash
   reload
   ```

## What's Included

### Configuration Files

- **`.bashrc`** / **`.zshrc`**: Main shell configuration files
- **`.loader`**: Smart loader that detects your shell and sources appropriate files
- **`.alias`**: Shell-agnostic aliases and shortcuts
- **`.prompt`**: Custom prompt with git integration and 256-color support
- **`.completion`**: Tab completion enhancements for both shells
- **`.function`**: Useful shell functions
- **`.zsh_config`**: Zsh-specific optimizations and options

### Prompt Features

Your prompt will show:
```
hostname:/current/path (git-branch) [💩] $
```

**Colors:**
- **Hostname**: Dark orange (256-color: 166)
- **Path**: Lavender purple (256-color: 141)
- **Git branch**: Medium grey (256-color: 244)
- **Dirty indicator**: Light orange/peach (256-color: 216)

The **💩 emoji** appears when you have uncommitted git changes.

### Useful Aliases

- **`reload`**: Reloads your shell configuration (shell-aware)
- **`ports`**: Shows listening network ports
- **`gb`**: Git branch
- **`gc`**: Git checkout
- **`gl`**: Git log
- **`gs`**: Git status
- **`force`**: Git push with force-with-lease

### Zsh Enhancements

When using zsh, you'll get:
- **Smart history**: 10,000 commands with duplicate removal and timestamp tracking
- **Auto-completion**: Enhanced tab completion with case-insensitive matching
- **Directory navigation**: Type directory name to cd, auto-pushd functionality
- **Extended globbing**: Advanced pattern matching for file operations
- **Error correction**: Typo suggestions for commands

## Customization

### Changing Prompt Colors

Edit `/system/.prompt` and modify the color codes:

```bash
# For zsh (256-color format)
PROMPT='%F{166}%m%f:%F{141}%~%f%F{244}$vcs_info_msg_0_%f%F{216}$(__git_dirty)%f $ '

# For bash (256-color format)
PS1="\[\033[38;5;166m\]\h\[\033[0m\]:\[\033[38;5;141m\]\w\[\033[38;5;244m\]\$(__git_branch)\[\033[38;5;216m\]\$(__git_dirty)\[\033[0m\] $ "
```

### Adding Custom Aliases

Add your aliases to `/system/.alias`:

```bash
alias myalias="command here"
```

### Shell Detection

All configuration files use shell detection to provide the best experience:

```bash
if [ -n "$ZSH_VERSION" ]; then
  # Zsh-specific code
else
  # Bash-specific code
fi
```

## Requirements

- **Git**: For git integration in the prompt
- **Zsh** (optional): For enhanced features
- **Modern terminal**: That supports 256-color palette

## File Structure

```
dotfiles/
├── install.sh          # Installation script
├── README.md           # This file
├── runcom/
│   ├── .bashrc        # Bash configuration
│   └── .zshrc         # Zsh configuration
└── system/
    ├── .loader        # Main configuration loader
    ├── .alias         # Shell aliases
    ├── .prompt        # Custom prompt configuration
    ├── .completion    # Tab completion setup
    ├── .function      # Custom shell functions
    └── .zsh_config    # Zsh-specific options
```

---

*Optimized for modern terminal workflows with cross-shell compatibility.*
