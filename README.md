# Neovim Configuration

This repository contains my custom Neovim configuration, designed to enhance efficiency and provide a clear visual experience.

## Key Features
- **Autocomplete**: Integrated with `nvim-cmp`.
- **Advanced Syntax Highlighting**: Powered by `Treesitter`.
- **Auto-Pairing**: Close brackets, parentheses, and quotes with `nvim-autopairs`.
- **Enhanced Visuals**: Status bar, file explorer, indentation guides, and more.

## Included Plugins
- `nvim-cmp`: Autocompletion.
- `nvim-treesitter`: Advanced syntax highlighting.
- `nvim-autopairs`: Auto-close delimiters.
- `lualine.nvim`: Status bar.
- `nvim-tree.lua`: File explorer.
- `telescope.nvim`: Advanced file and text searching.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/FJLdx/neovim-config.git ~/.config/nvim

2.	Make sure packer.nvim is installed:

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim-tree

3.	Open Neovim and run:

:PackerSync

Enjoy your custom Neovim setup!

Contributions

Feel free to open an issue or pull request with suggestions or improvements.

## Key Features and Shortcuts

### General
- **Open Neovim**: Run `nvim` in the terminal.
- **Save and Quit**:
  - `:w`: Save the current file.
  - `:q`: Quit Neovim.
  - `:wq`: Save and quit.
  - `:q!`: Quit without saving.

### Plugin Shortcuts

#### **Telescope.nvim**
Advanced searching and file navigation:
- `:Telescope find_files`: Search for files in the current project.
- `:Telescope live_grep`: Search for text within files.
- `:Telescope buffers`: List all open buffers.
- `:Telescope help_tags`: Search Neovim's help documentation.

#### **Nvim-tree.lua**
File explorer:
- `:NvimTreeToggle`: Open or close the file explorer.
- `a`: Create a new file or directory.
- `d`: Delete a file or directory.
- `r`: Rename a file or directory.

#### **Lualine.nvim**
Status bar:
- Displays file name, file type, diagnostics, and cursor position.
- No additional shortcuts needed; it updates automatically.

#### **Indent-blankline.nvim**
Visual indentation guides:
- Highlights the indentation levels of your code.
- Shows the current block scope automatically (no shortcuts required).

#### **Nvim-autopairs**
Automatically closes brackets, parentheses, and quotes:
- Type an opening delimiter (e.g., `(`, `{`, `"`), and it automatically adds the closing one.
- Works seamlessly with autocompletion.

#### **Toggleterm.nvim**
Integrated terminal:
- `Ctrl+\`: Open or close the terminal in a floating window.
- Use terminal commands as usual.

#### **Comment.nvim**
Quickly comment and uncomment lines:
- `gc`: Comment out the current line.
- `gb`: Comment out a block of code.
- Works in visual mode for selected text.

#### **Nvim-surround**
Easily add or modify surrounding delimiters:
- `ys<motion><char>`: Add surrounding characters.
  - Example: `ysiw(` converts `word` to `(word)`.
- `cs<old><new>`: Change surrounding characters.
  - Example: `cs"'` changes `"word"` to `'word'`.
- `ds<char>`: Delete surrounding characters.
  - Example: `ds(` changes `(word)` to `word`.

### Treesitter Features
- Syntax-aware highlighting for supported languages.
- Automatically installed for languages like Bash, Python, Lua, and JavaScript.
- No shortcuts needed; it works in the background.

---

##
Steps to Correct the README.md

	1.	Edit the file:
Open the README.md file in Neovim:
   nvim /home/ldx/neovim-config/README.md
