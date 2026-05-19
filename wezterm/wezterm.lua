local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- theme config
config.color_scheme = "tokyonight"

-- window config
config.initial_rows = 32
config.initial_cols = 105

-- font config
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14.0

-- key bindings
config.keys = {
  -- move to the end of word
  {
    key = "RightArrow",
    mods = "OPT",
    action = wezterm.action { SendString = "\x1bf"  }
  },
  -- move to the beginning of word
  {
    key = "LeftArrow",
    mods = "OPT",
    action = wezterm.action { SendString = "\x1bb" }
  },
  -- move to the end of line
  {
    key = "RightArrow",
    mods = "CMD",
    action = wezterm.action { SendString = "\x05" }
  },
  -- move to the beginning of line
  {
    key = "LeftArrow",
    mods = "CMD",
    action = wezterm.action { SendString = "\x01" }
  }
}

return config
