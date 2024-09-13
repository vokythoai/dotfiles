local options = {
  -- Can be a list of adapters like what neotest expects,
  -- or a list of adapter names,
  -- or a table of adapter names, mapped to adapter configs.
  -- The adapter will then be automatically loaded with the config.
  adapters = {
    ["neotest-golang"] = {},
    ["neotest-rspec"] = {},
    ["neotest-plenary"] = {},
    ["neotest-jest"] = {
      jestConfigFile = function()
        local file = vim.fn.expand("%:p")
        if string.find(file, "/packages/") then
          return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
        end
        return vim.fn.getcwd() .. "/jest.config.ts"
      end,
      cwd = function()
        local file = vim.fn.expand("%:p")
        if string.find(file, "/packages/") then
          return string.match(file, "(.-/[^/]+/)src")
        end
        return vim.fn.getcwd()
      end,
    },
  },
  status = { virtual_text = true },
  output = { open_on_run = true },
  quickfix = {
    open = function()
      if require("lazyvim.util").has("trouble.nvim") then
        require("trouble").open({ mode = "quickfix", focus = false })
      else
        vim.cmd("copen")
      end
    end,
  },
}
