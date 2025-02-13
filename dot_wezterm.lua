local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Spawn a fish shell in login mode
config.default_prog = { '/bin/bash' }

config.font = wezterm.font("Hack Nerd Font")

config.font_size = 16

config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.88

config.window_decorations = "RESIZE"

config.window_background_gradient = {
	interpolation = "Linear",

	orientation = "Vertical",

	blend = "Rgb",

	colors = {
		"#11111b",
		"#181825",
	},
}
--config.mux_enable_ssh_agent = false

config.mux_env_remove = {
	"SSH_AUTH_SOCK",
	"SSH_CLIENT",
	"SSH_CONNECTION",
}

config.front_end = "WebGpu"

return config
