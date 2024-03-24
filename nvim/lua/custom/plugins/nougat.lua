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
  })

  local stl = Bar("statusline")
  stl:add_item(mode)
  stl:add_item(nut.git.branch({
    hl = { bg = color.bg2, fg = color.magenta },
    prefix = "  ",
    suffix = " ",
    sep_right = sep.space(true),
  }))
  stl:add_item(nut.git.status.create({
    hl = { fg = color.bg },
    content = {
      nut.git.status.count("added", {
        hl = { bg = color.green },
        prefix = "+",
        sep_right = sep.space(true),
      }),
      nut.git.status.count("changed", {
        hl = { bg = color.blue },
        prefix = "~",
        sep_right = sep.space(true),
      }),
      nut.git.status.count("removed", {
        hl = { bg = color.red },
        prefix = "-",
        sep_right = sep.space(true),
      }),
    },
  }))
  stl:add_item(nut.spacer())
  stl:add_item(nut.truncation_point())
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
    hl = { bg = color.blue, fg = color.bg },
    sep_left = sep.space(true),
    prefix = " ",
    content = core.code("P"),
    suffix = " ",
  }))

  local stl_inactive = Bar("statusline")
  stl_inactive:add_item(mode)
  stl_inactive:add_item(nut.spacer())

  nougat.set_statusline(function(ctx)
    return ctx.is_focused and stl or stl_inactive
  end)
end

return Plugin
