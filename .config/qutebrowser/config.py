import json
import os

try:
    with open(os.path.expanduser('~/.cache/wal/colors.json'), 'r') as f:
        data = json.load(f)
    colors = data['colors']
    for i in range(16):
        globals()[f'c{i}'] = colors[f'color{i}']
except (FileNotFoundError, Exception):
    pass

c.auto_save.session = True
c.colors.completion.even.bg = c0
c.colors.completion.fg = c3
c.colors.completion.item.selected.bg = c3
c.colors.completion.item.selected.fg = c7
c.colors.completion.odd.bg = c0
c.colors.downloads.bar.bg = c0
c.colors.downloads.start.fg = c4
c.colors.downloads.stop.fg = c2
c.colors.hints.bg = c0
c.colors.hints.fg = c8
c.colors.hints.match.fg = c1
c.colors.statusbar.command.bg = c0
c.colors.statusbar.command.fg = c8
c.colors.statusbar.insert.bg = c0
c.colors.statusbar.insert.fg = c8
c.colors.statusbar.normal.bg = c0
c.colors.statusbar.normal.fg = c8
c.colors.statusbar.passthrough.bg = c0
c.colors.statusbar.passthrough.fg = c8
c.colors.statusbar.url.fg = c8
c.colors.statusbar.url.hover.fg = c3
c.colors.statusbar.url.success.https.fg = c3
c.colors.tabs.even.bg = c0
c.colors.tabs.even.fg = c8
c.colors.tabs.odd.bg = c0
c.colors.tabs.odd.fg = c8
c.colors.tabs.selected.even.bg = c3
c.colors.tabs.selected.even.fg = c7
c.colors.tabs.selected.odd.bg = c3
c.colors.tabs.selected.odd.fg = c7
c.content.blocking.enabled = True
c.fonts.default_family = 'monospace'
c.tabs.indicator.width = 0
c.tabs.padding = {'top': 5, 'right': 9, 'bottom': 5, 'left': 9}
c.tabs.width = '7%'
c.window.transparent = True

config.load_autoconfig(False)
