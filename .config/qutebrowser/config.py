import json
import os

try:
    bg, fg, cursor = '#000000', '#FFFFFF', '#FFFFFF'
    for i in range(16):
        globals()[f'c{i}'] = '#888888'
    with open(os.path.expanduser('~/.cache/wal/colors.json'), 'r') as f:
        data = json.load(f)
    special = data.get('special', {})
    bg = special.get('background', bg)
    fg = special.get('foreground', fg)
    cursor = special.get('cursor', cursor)
    colors = data.get('colors', {})
    for i in range(16):
        globals()[f'c{i}'] = colors.get(f'color{i}', globals().get(f'c{i}'))
except (FileNotFoundError, Exception):
    pass

# Set the font
c.fonts.default_family = 'monospace'

# Status bar colors
c.colors.statusbar.normal.bg = bg
c.colors.statusbar.normal.fg = fg
c.colors.statusbar.insert.bg = c2
c.colors.statusbar.command.fg = c3
c.colors.statusbar.passthrough.bg = c4
c.colors.statusbar.passthrough.fg = fg

# Tab colors
c.colors.tabs.even.bg = bg
c.colors.tabs.even.fg = fg
c.colors.tabs.odd.bg = bg
c.colors.tabs.odd.fg = fg
c.colors.tabs.selected.even.bg = c4
c.colors.tabs.selected.even.fg = c15
c.colors.tabs.selected.odd.bg = c4
c.colors.tabs.selected.odd.fg = c15

# Hint colors
c.colors.hints.bg = c3
c.colors.hints.fg = bg
c.colors.hints.match.fg = c1

# Completion menu colors
c.colors.completion.odd.bg = bg
c.colors.completion.even.bg = c0
c.colors.completion.fg = fg
c.colors.completion.selected.bg = c4
c.colors.completion.selected.fg = fg

# Downloads bar colors
c.colors.downloads.bar.bg = bg
c.colors.downloads.system.fg = fg
c.colors.downloads.start.fg = c4
c.colors.downloads.stop.fg = c2

c.content.blocking.enabled = True

config.load_autoconfig(False)
