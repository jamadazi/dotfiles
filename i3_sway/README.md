# Configurations for Sway and i3 window manager

To install, symlink:

`~/.i3` -> i3
`~/.sway` -> sway
`~/.config/i3` -> config

The actual configuration is in the `config` dir. It contains subdirs: `common`
for config to be used by both sway and i3; `sway` for sway-only configs; `i3`
for i3-only configs. The `i3/config` file simply includes all files from
`config/common` and `i3/common`. The `sway/config` file simply includes all
files from `config/common` and `sway/common`.

I primarily use sway, so the i3 config is missing functionality. I will fix it
whenever I need to use i3 again.
