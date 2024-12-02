Neovim Configuration

This repository contains my complete Neovim setup, optimized for programming, system administration, and cybersecurity tasks. It includes plugins and settings to enhance productivity, navigation, and code clarity.

Features

1.	Plugin Management:
	
•	Packer is used to manage all plugins.
	
2.	Autocompletion:

•	nvim-cmp: The main completion engine.
•	cmp-nvim-lsp: Completion sources for Language Server Protocol.
•	cmp-buffer: Completion from buffer content.
•	cmp-path: Path-based completion.
•	vim-vsnip and cmp-vsnip: Snippet support.

3.	Syntax Highlighting:

•	nvim-treesitter: Advanced syntax highlighting and code structure parsing.

4.	Indentation Visualization:

•	indent-blankline.nvim: Displays indentation blocks for better code readability.

5.	Theme:

•	Dracula: A visually appealing dark theme.

6.	Additional Tools:

•	Integrated file explorer.
•	Embedded terminal.
•	Commenting shortcuts.
•	Diagnostics and error handling.

Requirements

•	Neovim: Version 0.8 or higher.
•	Plugin Manager: Install packer.nvim with:

`git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

•	Node.js: Required for some plugins.
•	Python3 with pynvim: Install it with:

`pip install pynvim`

•	Git: Required for managing plugins.

Installation

1.	Clone this repository into your Neovim configuration directory:

`<LeftMouse>git clone https://github.com/FJLdx/neovim-config.git ~/.config/nvim`

2.	Open Neovim and install plugins:

`:PackerSync`

3.	Update Treesitter for syntax highlighting:

`:TSUpdate`

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
