vim.g.kommentary_create_default_mappings = false
--[[ require("kommentary.config").configure_language(
  "javascriptreact",
  {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"/*", "*/"},
    -- prefer_multi_line_comments = false,
    -- prefer_single_line_comments = false,
    -- use_consistent_indentation = true,
    -- ignore_whitespace = true
  }
) ]]
--[[ require('kommentary.config').configure_language("javascriptreact", {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"/*", "*/"},
}) ]]
vim.api.nvim_set_keymap("n", "<leader>/", "<Plug>kommentary_line_default <ESC>", {})
vim.api.nvim_set_keymap("v", "<leader>/", "<Plug>kommentary_visual_default <ESC>", {})
--let g.commentstring="//\%s"
function toggle_comment_custom_commentstring(...)
  local args = {...}
  -- Save the current value of commentstring so we can restore it later
  local commentstring = vim.bo.commentstring
  -- Set the commentstring for the current buffer to something new
  vim.bo.commentstring = "{/*%s*/}"
  --[[ Call the function for toggling comments, which will resolve the config
    to the new commentstring and proceed with that. ]]
  require("kommentary.kommentary").toggle_comment_range(
    args[1],
    args[2],
    require("kommentary.config").get_modes().normal
  )
  -- Restore the original value of commentstring
  vim.api.nvim_buf_set_option(0, "commentstring", commentstring)
end

-- Set the extra mapping for toggling a single line in normal mode
--[[ vim.api.nvim_set_keymap(
  "n",
  "<leader>/",
  '<cmd>lua require("kommentary");kommentary.go(' ..
    require("kommentary.config").context.line .. ", " .. "'toggle_comment_custom_commentstring'" .. ")<cr>",
  {}
) ]]
-- Set the extra mapping for toggling a range with a motion
--[[ vim.api.nvim_set_keymap(
  "n",
  "<leader>/",
  "v:lua.kommentary.go(" ..
    require("kommentary.config").context.init .. ", " .. "'toggle_comment_custom_commentstring'" .. ")",
  {}
) ]]
-- Set the extra mapping for toggling a range with a visual selection
--[[ vim.api.nvim_set_keymap(
  "v",
  "<leader>/",
  '<cmd>lua require("kommentary");kommentary.go(' ..
    require("kommentary.config").context.visual .. ", " .. "'toggle_comment_custom_commentstring'" .. ")<cr> <esc>",
  {}
) ]]
