return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  -- event = { "BufReadPre path/to/my-vault/**.md" },
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  event = { "BufReadPre " .. vim.fn.expand "~" .. "/journal/**.md" },
  dependencies = {

    "nvim-lua/plenary.nvim", -- required
    "hrsh7th/nvim-cmp", -- optional
    "nvim-telescope/telescope.nvim",-- optional
  },

  opts = {
    dir = "~/journal",  -- no need to call 'vim.fn.expand' here
    daily_notes = { folder = "Daily" },
    completion = {
      -- If using nvim-cmp, otherwise set to false
      nvim_cmp = true,
      -- Trigger completion at 2 chars
      min_chars = 2,
      -- Where to put new notes created from completion. Valid options are
      --  * "current_dir" - put new notes in same directory as the current buffer.
      --  * "notes_subdir" - put new notes in the default notes subdirectory.
      new_notes_location = "current_dir",

      -- Whether to add the output of the node_id_func to new notes in autocompletion.
      -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
      prepend_note_id = true
    },

    -- Optional, key mappings.
    mappings = {
      --   -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      --   ["gf"] = require("obsidian.mapping").gf_passthrough(),
    },

    finder = "telescope.nvim",

    -- Optional, customize how names/IDs for new notes are created.
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return suffix
    end,
  },
}
