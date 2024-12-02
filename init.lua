-- Asegura que Packer esté cargado
vim.cmd [[packadd packer.nvim]]

-- Configuración de Packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer gestiona sus propios complementos

  -- Complementos para autocompletado
  use 'neovim/nvim-lspconfig' -- Configuración del LSP
  use 'hrsh7th/nvim-cmp' -- Complemento de autocompletado
  use 'hrsh7th/cmp-nvim-lsp' -- Fuente para nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Autocompletado desde buffers
  use 'hrsh7th/cmp-path' -- Autocompletado para rutas
  use 'hrsh7th/vim-vsnip' -- Snippets opcional
  use 'hrsh7th/cmp-vsnip' -- Fuente de snippets para cmp

  -- Esquema de colores Dracula
  use 'dracula/vim'

  -- Treesitter para resaltado avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Indentación visual
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#44475a", nocombine = true })
        vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#ff79c6", nocombine = true })
      end)

      require("ibl").setup {
        indent = { char = "│" },
        scope = {
          enabled = true,
          show_start = true,
          show_end = false,
          highlight = { "IndentBlanklineContextChar" },
        },
      }
    end
  }

  -- Barra de estado
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'dracula',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        }
      }
    end
  }

  -- Explorador de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {}
    end
  }

  -- Búsqueda avanzada
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {}
    end
  }

  -- Visualización de diagnósticos
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {}
    end
  }

  -- Terminal integrado
  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<c-\>]],
        direction = 'float',
      }
    end
  }

  -- Comentarios rápidos
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {}
    end
  }

  -- Mejora de edición
  use {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup {}
    end
  }

  -- Cursor más visible
  use 'romainl/vim-cool'

  -- Autocompletado de pares
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
end)

-- Configuración de opciones generales
vim.opt.termguicolors = true -- Habilitar colores verdaderos

-- Configuración de números de línea absolutos
vim.opt.number = true -- Mostrar números de línea absolutos
vim.opt.signcolumn = "yes" -- Añadir columna de signos para espacio adicional
vim.opt.fillchars:append { vert = '┃' } -- Carácter vertical para la línea divisoria

-- Configuración de Dracula
vim.g.dracula_transparent_bg = true -- Fondo transparente
vim.cmd("colorscheme dracula") -- Activar Dracula

-- Configuración de Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "lua", "python", "javascript" }, -- Lenguajes a instalar
  highlight = {
    enable = true, -- Habilitar resaltado avanzado
  },
}

-- Configuración de nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Si usas snippets
    end,
  },
  mapping = {
    -- Usa las flechas para navegar el menú
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4), -- Desplazar documentos arriba
    ['<C-f>'] = cmp.mapping.scroll_docs(4), -- Desplazar documentos abajo
    ['<C-Space>'] = cmp.mapping.complete(), -- Forzar apertura del menú
    ['<C-e>'] = cmp.mapping.abort(), -- Cierra el menú
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirma la selección
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }
})

-- Integración de nvim-autopairs con nvim-cmp
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

-- Configuración del servidor de lenguaje Bash
require'lspconfig'.bashls.setup{}
