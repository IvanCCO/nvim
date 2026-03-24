return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("minuet").setup({
        provider = "openai_compatible",
        request_timeout = 2.5,
        throttle = 1500,
        debounce = 600,
        provider_options = {
          openai_compatible = {
            api_key = "OPENROUTER_API_KEY",
            end_point = "https://openrouter.ai/api/v1/chat/completions",
            model = "moonshotai/kimi-k2",
            name = "Openrouter",
            stream = true,
            optional = {
              max_tokens = 256,
              top_p = 0.9,
              provider = {
                sort = "throughput",
              },
            },
          },
        },
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            accept = "<A-a>",
            accept_line = "<A-l>",
            next = "<A-]>",
            prev = "<A-[>",
            dismiss = "<A-e>",
          },
        },
      })
    end,
  },

  -- blink.cmp integration
  {
    "saghen/blink.cmp",
    optional = true,
    dependencies = { "milanglacier/minuet-ai.nvim" },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = vim.list_extend(opts.sources.default or {}, { "minuet" })
      opts.sources.providers = opts.sources.providers or {}
      opts.sources.providers.minuet = {
        name = "minuet",
        module = "minuet.blink",
        score_offset = 8,
      }
      -- Provider icon for completion menu
      opts.appearance = opts.appearance or {}
      opts.appearance.kind_icons = vim.tbl_extend("force", opts.appearance.kind_icons or {}, {
        Openrouter = "󱂇",
      })
    end,
  },
}
