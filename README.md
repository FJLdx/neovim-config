# Neovim Configuration

This repository contains my complete Neovim setup, optimized for programming, system administration, and cybersecurity tasks. It includes plugins and settings to enhance productivity, navigation, and code clarity.

## Features

- **Plugin Management**: Utilizes [Packer](https://github.com/wbthomason/packer.nvim) to manage all plugins.
- **Autocompletion**:
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Main completion engine.
  - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): LSP source for nvim-cmp.
  - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): Buffer source for nvim-cmp.
  - [cmp-path](https://github.com/hrsh7th/cmp-path): Path source for nvim-cmp.
  - [vim-vsnip](https://github.com/hrsh7th/vim-vsnip) and [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip): Snippet support.
- **Syntax Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for advanced syntax highlighting and code structure parsing.
- **Indentation Visualization**: [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) to display indentation levels.
- **Theme**: [Dracula](https://github.com/dracula/vim) for a visually appealing dark interface.
- **Additional Tools**:
  - Integrated file explorer.
  - Embedded terminal.
  - Quick commenting shortcuts.
  - Enhanced diagnostics and error handling.

## Requirements

- **Neovim**: Version 0.8 or higher.
- **Plugin Manager**: Install `packer.nvim` with:
```bash
  git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim-cmp
```
	•	Node.js: Required for certain plugins.
	•	Python 3 with pynvim: Install it with:

```bash
pip install pynvim
```
	•	Git: Required for managing plugins.

Installation

1	Clone this repository into your Neovim configuration directory:
```bash
git clone https://github.com/FJLdx/neovim-config.git ~/.config/nvim
```

2   Open Neovim and install plugins:

```bash
:PackerSync
```

3	Update Treesitter for syntax highlighting:

```bash
:TSUpdate
```
4.	Restart Neovim to apply all changes.

Keybindings and Shortcuts

General

    •	<leader>e: Toggle file explorer.
	•	<leader>f: Search for files.
	•	<leader>c: Comment or uncomment selected lines.
	•	:w: Save the current file.
	•	:q: Quit Neovim.
	•	:x: Save and quit Neovim.

Navigation

	•	gg: Go to the beginning of the file.
	•	G: Go to the end of the file.
	•	%: Jump to matching brackets, parentheses, or braces.

Diagnostics

	•	<leader>d: Show diagnostics for the current line.
	•	[d: Jump to the previous diagnostic.
	•	]d: Jump to the next diagnostic.

Terminal Integration

	•	<leader>t: Open the embedded terminal.

Treesitter

	•	[m: Jump to the start of the previous function or method.
	•	]m: Jump to the start of the next function or method.

Autocompletion

	•	Tab: Navigate forward through completion suggestions.
	•	Shift-Tab: Navigate backward through completion suggestions.
	•	Enter: Confirm the current completion suggestion.

Screenshots

To be added.

Contributions

Contributions are welcome! Please open an issue or submit a pull request with your improvements.

Notes

This configuration is optimized for Linux systems but should work on macOS and WSL with minor adjustments. Feel free to report any issues or suggest enhancements.

Thank you for using my Neovim configuration! 🎉
