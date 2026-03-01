---@diagnostic disable: undefined-field
local Plugin = { "MunifTanjim/nougat.nvim" }

function Plugin.config()

  local nougat = require("nougat")
  local core = require("nougat.core")
  local Bar = require("nougat.bar")
  local Item = require("nougat.item")
  local sep = require("nougat.separator")

  local nut = {
    buf = {
      diagnostic_count = require("nougat.nut.buf.diagnostic_count").create,
      filename = require("nougat.nut.buf.filename").create,
      filetype = require("nougat.nut.buf.filetype").create,
    },
    git = {
      branch = require("nougat.nut.git.branch").create,
      status = require("nougat.nut.git.status"),
    },
    mode = require("nougat.nut.mode").create,
    spacer = require("nougat.nut.spacer").create,
    truncation_point = require("nougat.nut.truncation_point").create,
  }

  ---@type nougat.color
  local color = require("nougat.color").get()

  local mode = nut.mode({
    prefix = " ",
    suffix = " ",
    config = {
      highlight = {
        normal = { bg = "blue", fg = "bg1" },
        visual = { bg = "yellow", fg = "bg1" },
        insert = { bg = "green", fg = "bg1",},
        replace = { bg = "magenta", fg = "bg1",},
        commandline = { bg = "magenta", fg = "bg1" },
        terminal = { bg = "cyan", fg = "bg1" },
      },
    },
  })

  local function get_mode_highlight()
    local mode_map = {
      n = { bg = "blue", fg = "bg1" },
      v = { bg = "yellow", fg = "bg1" },
      V = { bg = "yellow", fg = "bg1" },
      i = { bg = "green", fg = "bg1",},
      R = { bg = "magenta", fg = "bg1",},
      c = { bg = "magenta", fg = "bg1" },
      t = { bg = "cyan", fg = "bg1" },
    }
    local current_mode = vim.api.nvim_get_mode().mode:sub(1, 1)
    return mode_map[current_mode] or { bg = "blue", fg = "bg1" } -- Default to Normal
  end

  local function recording_macro()
    local reg = vim.fn.reg_recording()
    if reg and reg ~= "" then
      return "recording @" .. reg
    end
    return ""
  end

  local stl = Bar("statusline")

  stl:add_item(mode)

  stl:add_item(nut.git.branch({
    hl = { bg = color.bg2 },
    prefix = "  ",
    suffix = " ",
  }))

  stl:add_item(nut.git.status.create({
    hl = { bg = color.bg1 },
    content = {
      nut.git.status.count("added", {
        hl = { fg = color.green },
        prefix = " +",
        sep_right = sep.space(true),
      }),
      nut.git.status.count("changed", {
        hl = { fg = color.blue },
        prefix = " ~",
        sep_right = sep.space(true),
      }),
      nut.git.status.count("removed", {
        hl = { fg = color.red },
        prefix = " -",
        sep_right = sep.space(true),
      }),
    },
  }))

  stl:add_item(nut.buf.filename({
    sep_left = sep.space(true),
    prefix = " ",
    suffix = " ",
  }))

  stl:add_item(nut.spacer())
  stl:add_item(nut.truncation_point())
  stl:add_item(Item({
    hl = { fg = "yellow" },
    sep_left = sep.space(true),
    content = function()
      return recording_macro()
    end,
    prefix = " ",
    suffix = " ",
  }))

  stl:add_item(nut.buf.diagnostic_count({
    sep_left = sep.space(true),
    prefix = " ",
    suffix = " ",
    config = {
      error = { prefix = " " },
      warn = { prefix = " " },
      info = { prefix = " " },
      hint = { prefix = "󰌶 " },
    },
  }))

  stl:add_item(nut.buf.filetype({
    hl = { bg = color.bg1 },
    sep_left = sep.space(true),
    prefix = " ",
    suffix = " ",
  }))

  stl:add_item(Item({
    hl = { bg = color.bg2, fg = color.blue },
    sep_left = sep.space(true),
    prefix = "  ",
    content = core.group({
      core.code("l"),
      ":",
      core.code("c"),
    }),
    suffix = " ",
  }))

  stl:add_item(Item({
    hl = function() return get_mode_highlight() end,
    sep_left = sep.space(true),
    prefix = " ",
    content = core.code("P"),
    suffix = " ",
  }))

  local stl_inactive = Bar("statusline")
  stl_inactive:add_item(nut.mode())
  stl_inactive:add_item(nut.spacer())

  nougat.set_statusline(function(ctx)
    return ctx.is_focused and stl or stl_inactive
  end)
end

return Plugin
