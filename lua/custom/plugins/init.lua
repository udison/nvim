-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    opts = {
      bind = true,
      handler_opts = {
        border = 'rounded',
      },
    },
    config = function(_, opts)
      require('lsp_signature').setup(opts)
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'css',
        'scss',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'html',
      }
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {
      -- Defaults
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </
    },
    -- Also override individual filetype configs, these take priority.
    -- Empty by default, useful if one of the "opts" global settings
    -- doesn't work well in a specific filetype
    per_filetype = {
      ['html'] = {
        enable_close = false,
      },
    },
    ft = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'html',
    },
  },
}
