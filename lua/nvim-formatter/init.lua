require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath, --single-quote --trailing-comma es5 --arrow-parens avoid --jsx-bracket-same-line --jsx-single-quote",
              vim.api.nvim_buf_get_name(0)
            },
            stdin = true
          }
        end
      },
      javascriptreact = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {
              "--stdin-filepath, --single-quote --trailing-comma es5 --arrow-parens avoid --jsx-bracket-same-line --jsx-single-quote --no-bracket-spacing --html-whitespace-sensitivity ignore",
              vim.api.nvim_buf_get_name(0)
            },
            stdin = true
          }
        end
      },
      html = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
            stdin = true
          }
        end
      },
      css = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
            stdin = true
          }
        end
      },
      json = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
            stdin = true
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)

-- find a better way to do this
vim.cmd("autocmd BufWritePre *.js Format")
vim.cmd("autocmd BufWritePre *.jsx Format")
vim.cmd("autocmd BufWritePre *.lua Format")
vim.cmd("autocmd BufWritePre *.html Format")
vim.cmd("autocmd BufWritePre *.css Format")
vim.cmd("autocmd BufWritePre *.json Format")
